import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  final Widget childWidget;
  BackGroundImage({required this.childWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/green_bg1.webp"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.3,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: childWidget,
        ));
  }
}
