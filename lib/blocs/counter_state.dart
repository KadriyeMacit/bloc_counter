part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState(this.value);

  final int value;

  @override
  List<Object?> get props => [value];
}
