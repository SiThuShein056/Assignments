import 'package:flutter/material.dart';

class SignInType extends StatelessWidget {
  final Widget imageUrl;
  final Function onTap;
  SignInType({required this.imageUrl, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        width: 50,
        child: InkWell(
          onTap: onTap(),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
              // color: Color.fromARGB(244, 132, 201, 53),
              color: Colors.green,
            )),
            child: imageUrl,
          ),
        ),
      ),
    );
  }
}
