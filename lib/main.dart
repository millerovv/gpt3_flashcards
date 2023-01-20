import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
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
          textTheme: _buildTextTheme(context),
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

  TextTheme _buildTextTheme(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GoogleFonts.notoSansTextTheme(textTheme)
        .copyWith(
          displayLarge:
              GoogleFonts.merriweather(textStyle: textTheme.displayLarge),
          displayMedium:
              GoogleFonts.merriweather(textStyle: textTheme.displayMedium),
          displaySmall:
              GoogleFonts.merriweather(textStyle: textTheme.displaySmall),
          headlineLarge:
              GoogleFonts.merriweather(textStyle: textTheme.headlineLarge),
          headlineMedium:
              GoogleFonts.merriweather(textStyle: textTheme.headlineMedium),
          headlineSmall:
              GoogleFonts.merriweather(textStyle: textTheme.headlineSmall),
        )
        .apply(
          bodyColor: const Color(0xFF2E2E2E),
          displayColor: Colors.black,
        );
  }
}
