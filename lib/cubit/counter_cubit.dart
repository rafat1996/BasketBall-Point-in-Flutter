import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoint = 0;
  int teamBPoint = 0;
  void counterPoint({required String teamName, required int number}) {
    if (teamName == 'A') {
      teamAPoint += number;
      emit(CounterTeamA());
    } else {
      teamBPoint += number;
      emit(CounterTeamB());
    }
  }

  void reset() {
    teamAPoint = 0;
    teamBPoint = 0;
    emit(ResetCounter());
  }
}
