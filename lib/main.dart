import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizquiz/home_page.dart';
import 'package:quizquiz/provider.dart';

final counterProvider =
    StateNotifierProvider<CounterNotifier, int?>((ref) => CounterNotifier());

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
