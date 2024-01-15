import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterNotifier extends StateNotifier<int?> {
  CounterNotifier() : super(null);

  increment() => state = state == null ? 1 : state! + 1;
}
