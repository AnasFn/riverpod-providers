import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizquiz/main.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    final addCount = ref.read(counterProvider.notifier);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow,
          title: Text(counter == null ? 0.toString() : counter.toString())),
      body: const Center(
        child: Text('#2 Using StateNotifierProvider'),
      ),
      // title: Text(counter.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addCount.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
