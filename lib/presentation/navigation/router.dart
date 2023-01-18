import 'package:go_router/go_router.dart';
import 'package:gpt3_flashcards/presentation/pages/home/home_page.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
