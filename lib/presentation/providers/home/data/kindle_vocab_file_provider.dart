import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final kindleVocabFileProvider = StateProvider.autoDispose<File?>((ref) => null);
