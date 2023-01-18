import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final kindleParsedVocabFileProvider =
    StateProvider.autoDispose<File?>((ref) => null);
