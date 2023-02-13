import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is CounterIncremented) {
      yield CounterState(state.value + 1);
    } else if (event is CounterDecremented) {
      yield CounterState(state.value - 1);
    }
  }
}
