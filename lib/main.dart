import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizquiz/home_page.dart';
import 'package:quizquiz/user_notifier.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>((ref) {
  return UserNotifier();
});

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: const HomePage());
  }
}
