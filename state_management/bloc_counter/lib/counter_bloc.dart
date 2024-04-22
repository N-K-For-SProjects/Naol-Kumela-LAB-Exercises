import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}

class CounterState {
  final int counter;

  const CounterState({required this.counter});
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<IncrementEvent>(
        (event, emit) => emit(CounterState(counter: state.counter + 1)));
    on<DecrementEvent>(
        (event, emit) => emit(CounterState(counter: state.counter - 1)));
  }
}
