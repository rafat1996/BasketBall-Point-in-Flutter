part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterTeamA extends CounterState {}

final class CounterTeamB extends CounterState {}

final class ResetCounter extends CounterState {}