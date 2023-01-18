import 'package:flutter/material.dart';

/// This widget is based on the
/// library [loading_overlay](https://pub.dev/packages/loading_overlay).
///
/// Use this to show a barrier with loading indicator over content on the
/// screen to avoid user interactions during an async operation.
///
/// The progress indicator can be turned on or off using [show]
///
/// The progress indicator defaults to a [CircularProgressIndicator] but can be
/// any kind of widget.
///
/// The color of the modal barrier can be set using [color]
///
/// The opacity of the modal barrier can be set using [opacity]
class LoadingIndicatorOverlay extends StatefulWidget {
  /// Default constructor.
  const LoadingIndicatorOverlay({
    super.key,
    required this.show,
    required this.child,
    this.opacity = 0.5,
    this.indicator = const CircularProgressIndicator(),
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.linear,
    this.color,
  });

  /// The widget for overlay loading indicator.
  final Widget indicator;

  /// The widget of the content behind overlay.
  final Widget child;

  /// Whether the overlay barrier should be shown.
  final bool show;

  /// The opacity of the overlay background modal barrier.
  final double opacity;

  /// Duration of the overlay show/hide animation.
  final Duration duration;

  /// The curve of the overlay show/hide animation.
  final Curve curve;

  /// Color of the overlay background modal barrier.
  ///
  /// [ThemeData.colorScheme.background] by default.
  final Color? color;

  @override
  _LoadingIndicatorOverlayState createState() =>
      _LoadingIndicatorOverlayState();
}

class _LoadingIndicatorOverlayState extends State<LoadingIndicatorOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _overlayVisible = false;

  @override
  void initState() {
    super.initState();
    _overlayVisible = false;
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    ));
    _animation.addStatusListener((status) {
      switch (status) {
        case AnimationStatus.forward:
          setState(() => _overlayVisible = true);
          break;
        case AnimationStatus.dismissed:
          setState(() => _overlayVisible = false);
          break;
        case AnimationStatus.reverse:
        case AnimationStatus.completed:
          break;
      }
    });
    if (widget.show) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(LoadingIndicatorOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!oldWidget.show && widget.show) {
      _controller.forward();
    }
    if (oldWidget.show && !widget.show) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      widget.child,
      if (_overlayVisible)
        FadeTransition(
          opacity: _animation,
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: widget.opacity,
                child: ModalBarrier(
                  dismissible: false,
                  color:
                      widget.color ?? Theme.of(context).colorScheme.background,
                ),
              ),
              Center(child: widget.indicator),
            ],
          ),
        ),
    ]);
  }
}
