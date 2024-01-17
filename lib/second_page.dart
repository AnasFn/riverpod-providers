import 'package:flutter/material.dart';

class SecondpPage extends StatelessWidget {
  const SecondpPage({
    super.key,
    required this.endPoint,
  });
  final String endPoint;
  @override
  Widget build(BuildContext context) {
    //   final userName = ref.watch(userProvider.select((value) => '$value.$endPoint'));
    return Scaffold(
      body: Center(
        child: Text(endPoint),
      ),
    );
  }
}
