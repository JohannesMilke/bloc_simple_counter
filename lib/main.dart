import 'package:bloc_simple_counter/page/counter_bloc.dart';
import 'package:bloc_simple_counter/page/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  final String appTitle = 'Counter Bloc example';
  final CounterBloc counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) => BlocProvider(
        bloc: counterBloc,
        child: MaterialApp(
          title: appTitle,
          home: Scaffold(
            appBar: AppBar(
              title: Text(appTitle),
            ),
            body: CounterPage(),
          ),
        ),
      );
}
