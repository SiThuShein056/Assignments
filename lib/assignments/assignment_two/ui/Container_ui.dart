import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_lessons/assignments/assignment_two/components/glass_ui.dart';

class ContainerUi extends StatefulWidget {
  @override
  State<ContainerUi> createState() => _ContainerUiState();
}

class _ContainerUiState extends State<ContainerUi> {
  bool onTap = false;
  late bool isEven;
  int index = 0;
  int randomNum = Random.secure().nextInt(10);

  List<String> images = [
    "assets/images/tree1.jpg",
    "assets/images/tree5.jpg",
    "assets/images/tree3.jpg",
    "assets/images/tree4.jpg",
  ];

  @override
  void initState() {
    super.initState();
    checkNum(randomNum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton.outlined(
          splashRadius: 30,
          iconSize: 50,
          color: isEven ? Colors.lightGreenAccent : Colors.white,
          onPressed: randomImage,
          icon: Icon(Icons.skip_next_outlined)),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text("Assignment Two"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              images[index],
            ),
            fit: BoxFit.cover,
          )),
          child: GlassUi(
            resultText: checkNum(randomNum).toString(),
            numberText: randomNum.toString(),
            onTap: onTap,
            isEven: isEven,
          )),
    );
  }

  String checkNum(int num) {
    isEven = num % 2 == 0 || num == 0 ? true : false;
    return isEven
        ? "Random number $num is Even Number"
        : "Random number $num is Odd Number";
  }

  void randomImage() {
    randomNum = Random.secure().nextInt(10);
    checkNum(randomNum);
    index + 1 < images.length ? index++ : index = 0;
    onTap ? onTap = false : onTap = true;
    setState(() {});
  }
}
