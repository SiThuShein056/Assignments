import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: InkWell(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                // for bg4 image
                // color: Color.fromARGB(244, 132, 201, 53),
                color: Colors.green,
              )),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.person,
                color: Colors.grey,
              ),
              Text(
                "Upload profile",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
