

 import 'package:basketball_counter_app/cbit_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(increamentTeamA());

  int teamAPoint=0;
  int teamBPoint=0;

  void incTeamA({required int points,required String text}){
    if(text == 'A')
    {
      teamAPoint+=points;
      emit(increamentTeamA());
    }
    else{
      teamBPoint+=points;
      emit(increamentTeamB());
    }
  }

}