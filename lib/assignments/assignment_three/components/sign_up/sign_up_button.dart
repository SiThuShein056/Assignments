import 'package:flutter/material.dart';

class SigUpButton extends StatelessWidget {
  const SigUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap: null,
        child: Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
              // color: Color.fromARGB(244, 132, 201, 53),
              color: Colors.green,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
