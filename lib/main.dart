import 'package:basketball_counter_app/cbit_state.dart';
import 'package:basketball_counter_app/cubit_state_managment.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(_pointsCounterState());
}



class _pointsCounterState extends StatelessWidget {
  int teamAPoints = 0;

  int teamBPoints = 0;


  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context)=>CounterCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Counter(),
        
    ),
      );
  }
}
 class Counter extends StatelessWidget {
    Counter({Key? key}) : super(key: key);
   int teamA=0;
   int teamB=0;

   @override
   Widget build(BuildContext context) {
     return BlocConsumer<CounterCubit,CounterState>(
         builder: (context,state){
          return Scaffold(
             appBar: AppBar(
               backgroundColor: Colors.orange,
               title: Text('Points Counter'),
             ),
             body: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       height: 500,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           const Text(
                             'Team A',
                             style: TextStyle(
                               fontSize: 32,
                             ),
                           ),
                           Text(
                             '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                             style: const TextStyle(
                               fontSize: 150,
                             ),
                           ),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               padding: const EdgeInsets.all(8),
                               primary: Colors.orange,
                               minimumSize: Size(150, 50),
                             ),
                             onPressed: () {
                               BlocProvider.of<CounterCubit>(context).incTeamA(points: 1, text:'A');

                             },
                             child: const Text(
                               'Add 1 Point ',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               primary: Colors.orange,
                               minimumSize: Size(150, 50),
                             ),
                             onPressed: () {
                               BlocProvider.of<CounterCubit>(context).incTeamA(points: 2, text:'A');

                             },
                             child: const Text(
                               'Add 2 Point',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               primary: Colors.orange,
                               minimumSize: Size(150, 50),
                             ),
                             onPressed: () {
                               BlocProvider.of<CounterCubit>(context).incTeamA(points: 3, text:'A');

                             },
                             child: const Text(
                               'Add 3 Point ',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                     const SizedBox(
                       height: 500,
                       child: VerticalDivider(
                         indent: 50,
                         endIndent: 50,
                         color: Colors.grey,
                         thickness: 1,
                       ),
                     ),
                     SizedBox(
                       height: 500,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           const Text(
                             'Team B',
                             style: TextStyle(
                               fontSize: 32,
                             ),
                           ),
                           Text(
                             '$teamB',
                             style: const TextStyle(
                               fontSize: 150,
                             ),
                           ),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               padding: const EdgeInsets.all(8),
                               primary: Colors.orange,
                               minimumSize: const Size(150, 50),
                             ),
                             onPressed: () {
                               BlocProvider.of<CounterCubit>(context).incTeamA(points: 1, text:'B');

                             },
                             child: const Text(
                               'Add 1 Point ',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               primary: Colors.orange,
                               minimumSize: Size(150, 50),
                             ),
                             onPressed: () {
                               BlocProvider.of<CounterCubit>(context).incTeamA(points: 2, text:'B');

                             },
                             child: const Text(
                               'Add 2 Point ',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               primary: Colors.orange,
                               minimumSize: Size(150, 50),
                             ),
                             onPressed: () {
                               BlocProvider.of<CounterCubit>(context).incTeamA(points: 3, text:'B');

                             },
                             child: const Text(
                               'Add 3 Point ',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.black,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     padding: EdgeInsets.all(8),
                     primary: Colors.orange,
                     minimumSize: Size(150, 50),
                   ),
                   onPressed: () {

                   },
                   child: const Text(
                     'Reset',
                     style: TextStyle(
                       fontSize: 18,
                       color: Colors.black,
                     ),
                   ),
                 ),
               ],
             ),
           );
         },
         listener: (context,state){
           if(state is increamentTeamA)
             teamA=BlocProvider.of<CounterCubit>(context).teamAPoint;
           else
             teamB=BlocProvider.of<CounterCubit>(context).teamBPoint;


         });
   }
 }
