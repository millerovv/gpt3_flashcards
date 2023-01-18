import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/locator/locator.dart';
import 'package:gpt3_flashcards/presentation/navigation/router.dart';

void main() {
  initLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        title: 'GPT-3 Flashcards',
        routerConfig: goRouter,
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF0c0f0a),
            onPrimary: Colors.white,
            secondary: Colors.pinkAccent,
            onSecondary: Colors.white,
            error: Colors.redAccent,
            onError: Colors.white,
            background: Colors.white,
            onBackground: Color(0xFF0c0f0a),
            surface: Color(0xFF0c0f0a),
            onSurface: Colors.white,
          ),
        ),
      ),
    );
  }
}
