import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizquiz/main.dart';
import 'package:quizquiz/second_page.dart';

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
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => SecondpPage(endPoint: userName))),
                child: const Text('GO Second')),
            const SizedBox(
              height: 10,
            ),
            Text(userName),
            TextField(
              onSubmitted: (value) {
                ref.read(userProvider.notifier);
              },
            ),
            TextField(
              onSubmitted: (value) {
                ref.read(userProvider.notifier).updateAge(int.parse(value));
              },
            ),
            Text(userAge.toString()),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => SecondpPage(endPoint: userAge.toString()))),
                child: const Text('GO Second')),
          ],
        ),
      ),
    );
  }
}
