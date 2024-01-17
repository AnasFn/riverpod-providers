import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quizquiz/main.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userFutureProvider);
    return Scaffold(
        body: Center(
      child: user.when(data: (data) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.name),
            Text(data.email),
          ],
        );
      }, error: (error, stackTrace) {
        return Text(error.toString());
      }, loading: () {
        return const CircularProgressIndicator();
      }),
    ));
  }
}
