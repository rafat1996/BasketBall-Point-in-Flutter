import 'package:basketballpoint/cubit/counter_cubit.dart';
import 'package:basketballpoint/widget/button-point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointCounter());
}

class PointCounter extends StatelessWidget {
  const PointCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasketBall Pointer',
            style: TextStyle(fontFamily: 'Pacifico')),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 116, 177, 206),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 530,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style:
                              TextStyle(fontSize: 32, fontFamily: 'Pacifico'),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                          style: const TextStyle(
                              fontSize: 150, fontFamily: 'Pacifico'),
                        ),
                        ButtonPoint(
                            pointNum: 'Add 1 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .counterPoint(teamName: 'A', number: 1);
                            }),
                        const Spacer(
                          flex: 1,
                        ),
                        ButtonPoint(
                            pointNum: 'Add 2 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .counterPoint(teamName: 'A', number: 2);
                            }),
                        const Spacer(
                          flex: 1,
                        ),
                        ButtonPoint(
                            pointNum: 'Add 3 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .counterPoint(teamName: 'A', number: 3);
                            }),
                        const Spacer(
                          flex: 12,
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(255, 116, 177, 206),
                      thickness: 4,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style:
                              TextStyle(fontSize: 32, fontFamily: 'Pacifico'),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                          style: const TextStyle(
                              fontSize: 150, fontFamily: 'Pacifico'),
                        ),
                        ButtonPoint(
                            pointNum: 'Add 1 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .counterPoint(teamName: 'B', number: 1);
                            }),
                        const Spacer(
                          flex: 1,
                        ),
                        ButtonPoint(
                            pointNum: 'Add 2 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .counterPoint(teamName: 'B', number: 2);
                            }),
                        const Spacer(
                          flex: 1,
                        ),
                        ButtonPoint(
                            pointNum: 'Add 3 Point',
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .counterPoint(teamName: 'B', number: 3);
                            }),
                        const Spacer(
                          flex: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ButtonPoint(
                  pointNum: 'Reset',
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).reset();
                  }),
            ],
          );
        },
      ),
    );
  }
}
