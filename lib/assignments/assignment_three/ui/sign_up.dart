import 'package:flutter/material.dart';
import 'package:widget_lessons/assignments/assignment_three/components/backgroundImage.dart';
import 'package:widget_lessons/assignments/assignment_three/components/choose_route.dart';
import 'package:widget_lessons/assignments/assignment_three/components/profileImage.dart';
import 'package:widget_lessons/assignments/assignment_three/components/reuse_textfield.dart';
import '../components/sign_up/sign_up_button.dart';
import 'sign_in_ui.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});
  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  bool isSee = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGroundImage(
        childWidget: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileImage(),
            SizedBox(height: 10),
            Text(
              "Sign Up for new Account",
              style: TextStyle(
                fontSize: 18,
                // color: Color.fromARGB(244, 132, 201, 53),
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),
            ReuseTextfield(
                hintText: "Name",
                prefixIcon: Icon(Icons.person),
                suffixIcon: SizedBox(),
                textInputType: TextInputType.name,
                obscureText: false),
            SizedBox(height: 20),
            ReuseTextfield(
                hintText: "Email",
                prefixIcon: Icon(Icons.email_outlined),
                suffixIcon: SizedBox(),
                textInputType: TextInputType.emailAddress,
                obscureText: false),
            SizedBox(height: 20),
            ReuseTextfield(
              hintText: "Password",
              obscureText: !isSee,
              textInputType: TextInputType.name,
              prefixIcon: Icon(Icons.key),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isSee ? isSee = false : isSee = true;
                  });
                },
                icon: Icon(
                  isSee ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Suggess Password",
                  style: TextStyle(
                    // color: Color.fromARGB(244, 132, 201, 53),
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SigUpButton(),
            Spacer(),
            ChooseRoute(
              leadingText: "Already have any account ? ",
              trailingText: "Sign In",
              routeWidget: LoginUi(),
            ),
          ],
        ),
      ),
    );
  }
}
