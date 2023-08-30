import 'package:dart_frog/dart_frog.dart';
import 'package:my_project/bloc/counter_cubit.dart';

final _cubit = CounterDataSource();

Middleware counterProvideBloc() => provider<CounterDataSource>((context) => _cubit);
