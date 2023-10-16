import 'package:basketballpoint/widget/button-point.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PointCounter());
}

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamApoint = 0;

  int teamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BasketBall Pointer',
              style: TextStyle(fontFamily: 'Pacifico')),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 116, 177, 206),
        ),
        body: Column(
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
                        style: TextStyle(fontSize: 32, fontFamily: 'Pacifico'),
                      ),
                      Text(
                        '$teamApoint',
                        style: TextStyle(fontSize: 150, fontFamily: 'Pacifico'),
                      ),
                      ButtonPoint(
                          pointNum: 'Add 1 Point',
                          onPressed: () {
                            setState(() {
                              teamApoint++;
                            });
                          }),
                      const Spacer(
                        flex: 1,
                      ),
                      ButtonPoint(
                          pointNum: 'Add 2 Point',
                          onPressed: () {
                            setState(() {
                              teamApoint = teamApoint + 2;
                            });
                          }),
                      const Spacer(
                        flex: 1,
                      ),
                      ButtonPoint(
                          pointNum: 'Add 3 Point',
                          onPressed: () {
                            setState(() {
                              teamApoint = teamApoint + 3;
                            });
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
                        style: TextStyle(fontSize: 32, fontFamily: 'Pacifico'),
                      ),
                      Text(
                        '$teamBpoint',
                        style: TextStyle(fontSize: 150, fontFamily: 'Pacifico'),
                      ),
                      ButtonPoint(
                          pointNum: 'Add 1 Point',
                          onPressed: () {
                            setState(() {
                              teamBpoint++;
                            });
                          }),
                      const Spacer(
                        flex: 1,
                      ),
                      ButtonPoint(
                          pointNum: 'Add 2 Point',
                          onPressed: () {
                            setState(() {
                              teamBpoint = teamBpoint + 2;
                            });
                          }),
                      const Spacer(
                        flex: 1,
                      ),
                      ButtonPoint(
                          pointNum: 'Add 3 Point',
                          onPressed: () {
                            setState(() {
                              teamBpoint = teamBpoint + 3;
                            });
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
                  setState(() {
                    teamApoint = 0;
                    teamBpoint = 0;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
