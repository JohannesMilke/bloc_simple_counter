import 'package:meta/meta.dart';

@immutable
class CounterState {
  final int counter;

  const CounterState({this.counter = 0});

  CounterState copy({int counter}) =>
      CounterState(counter: counter ?? this.counter);
}
