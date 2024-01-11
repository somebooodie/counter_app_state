// ignore: file_names
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterState {
  final int count;
  CounterState(this.count);

  CounterState.initial() : count = 0;
}

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState.initial());

  void increment() {
    state = CounterState(state.count + 1);
  }
}

final counterProvider =
    StateNotifierProvider<CounterNotifier, CounterState>((ref) {
  return CounterNotifier();
});
