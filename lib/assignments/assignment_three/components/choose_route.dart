import 'package:flutter/material.dart';

class ChooseRoute extends StatelessWidget {
  final String leadingText, trailingText;
  final Widget routeWidget;
  ChooseRoute({
    required this.leadingText,
    required this.trailingText,
    required this.routeWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leadingText,
          style: TextStyle(
            // color: Color.fromARGB(244, 132, 201, 53),
            color: Colors.green,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return routeWidget;
              }));
            },
            child: Text(
              trailingText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: .2,
                  color: const Color.fromARGB(255, 6, 124, 10)),
            ))
      ],
    );
  }
}
