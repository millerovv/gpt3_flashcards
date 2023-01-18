import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';

/// Declares a notifier for keeping track of an action execution.
///
/// An action is an async function that has a life cycle
/// loading/error/done states.
///
/// Provide a [key] for family of this provider, that is unique to the action
/// that this provider tracks.
///
/// See: [ActionStatusNotifier].
final actionStatusProvider = StateNotifierProvider.autoDispose
    .family<ActionStatusNotifier, AsyncValue, String>(
        (ref, key) => ActionStatusNotifier(key));

/// Notifier for tracking action life cycle state.
///
/// An action is an async function that has a life cycle
/// loading/error/done states.
///
/// This is planned to become part of the riverpod, but for now we use
/// this *workaround* solution.
///
/// See discussions:
/// * https://github.com/rrousselGit/riverpod/discussions/1231#discussioncomment-2247145
/// * https://twitter.com/remi_rousselet/status/1568333820692238336?s=20&t=UPv3WPgW_Yl0-3WuSeMHIA.
class ActionStatusNotifier extends StateNotifier<AsyncValue> {
  /// Creates an instance [ActionStatusNotifier].
  ActionStatusNotifier(this._key) : super(const AsyncValue.data(null));

  final String _key;

  /// Runs the [actionFn] and updates [state] with its status.
  Future<AsyncValue> run(ActionFn actionFn) async {
    state = const AsyncValue.loading();
    late AsyncValue nextState;
    try {
      await actionFn();
      nextState = const AsyncValue.data(null);
    } catch (err, stackTrace) {
      debugPrint('ActionStatusNotifier[$_key] caught exception: '
          '$err\n$stackTrace');
      nextState = AsyncValue.error(err, stackTrace);
    }
    // Need to check `mounted` because an action can be invoked without
    // subscription to the [actionStatusProvider].
    //
    // In this case notifier gets disposed therefore referring to `state` causes an error.
    if (mounted) {
      state = nextState;
    }
    return nextState;
  }
}

/// Creates a provider for listening to action status.
///
/// [key] is the unique key of the action that needs to be listened.
///
/// Returns an auto disposable provider with [AsyncValue] state representing
/// status of the action operation.
///
/// **Do not** call this from the UI.
///
/// **Only** call this method for creating a `final` provider.
AutoDisposeProvider<AsyncValue> declareActionStatusProvider(String key) =>
    Provider.autoDispose<AsyncValue>(
      (ref) => ref.watch(actionStatusProvider(key)),
      dependencies: [actionStatusProvider(key)],
    );

/// Action callback.
///
/// Returns Future because action that has a status is always an async operation.
typedef ActionFn = Future<void> Function();
