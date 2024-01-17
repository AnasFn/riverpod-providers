import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizquiz/main.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final userName = ref.watch(userProvider.select((value) => value.name));
    final userAge = ref.watch(userProvider.select((value) => value.age));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(userName),
            TextField(
              onSubmitted: (value) {
                ref.read(userProvider.notifier).updateName(value);
              },
            ),
            TextField(
              onSubmitted: (value) {
                ref.read(userProvider.notifier).updateAge(int.parse(value));
              },
            ),
            Text(userAge.toString()),
          ],
        ),
      ),
    );
  }
}
