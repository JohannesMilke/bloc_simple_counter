import 'package:bloc_simple_counter/page/counter_bloc.dart';
import 'package:bloc_simple_counter/page/counter_event.dart';
import 'package:bloc_simple_counter/page/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    final dispatch = counterBloc.dispatch;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlocBuilder(
            bloc: counterBloc,
            builder: (BuildContext context, CounterState state) =>
                Text('Counter: ${state.counter}'),
          ),
          const SizedBox(height: 8),
          RaisedButton(
            child: Text('Increase counter'),
            onPressed: () => dispatch(CounterEventIncrement()),
          ),
        ],
      ),
    );
  }
}
