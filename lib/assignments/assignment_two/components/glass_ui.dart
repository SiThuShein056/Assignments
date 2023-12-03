// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GlassUi extends StatelessWidget {
  String resultText, numberText;
  bool onTap, isEven;
  GlassUi({
    required this.resultText,
    required this.numberText,
    required this.onTap,
    required this.isEven,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.3),
              blurRadius: 25,
              spreadRadius: -5,
            )
          ],
          gradient: LinearGradient(
            colors: isEven
                ? [
                    Colors.white60,
                    Colors.white30,
                    //Colors.amber,
                    //Colors.green,
                  ]
                : [
                    Colors.yellowAccent.withOpacity(0.5),
                    Colors.lightGreenAccent.withOpacity(0.5),
                  ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
          //BG  အရောင်လျော့ ချဘို့ /to make glass shape
          color: Colors.white.withOpacity(onTap ? 0.5 : 0.6),
          borderRadius: BorderRadius.circular(onTap ? 15 : 50),
          border: Border.all(
              width: 2,
              color: isEven ? Colors.lightGreenAccent : Colors.white54)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numberText,
              style: TextStyle(
                color: isEven ? Colors.lightGreenAccent : Colors.white54,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 10),
            Text(
              resultText,
              style: TextStyle(
                color: isEven ? Colors.lightGreenAccent : Colors.white54,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
