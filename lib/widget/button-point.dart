import 'package:flutter/material.dart';

class ButtonPoint extends StatelessWidget {
  final String pointNum;
  final Function() onPressed;
  const ButtonPoint(
      {super.key, required this.pointNum, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 116, 177, 206),
          shadowColor: const Color.fromARGB(255, 70, 87, 160),
        ),
        onPressed: onPressed,
        child: Text(
          pointNum,
          style: const TextStyle(fontSize: 20, color: Colors.black,fontFamily: 'Pacifico'),
        ));
  }
}
