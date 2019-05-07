import 'package:bloc/bloc.dart';
import 'package:bloc_simple_counter/page/counter_event.dart';
import 'package:bloc_simple_counter/page/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => CounterState();

  @override
  Stream<CounterState> mapEventToState(
    CounterState currentState,
    CounterEvent event,
  ) async* {
    if (event is CounterEventIncrement) {
      final counter = currentState.counter + 1;
      yield currentState.copy(counter: counter);
    }
  }
}
