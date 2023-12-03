import 'package:flutter/material.dart';
import 'package:widget_lessons/assignments/assignment_three/components/backgroundImage.dart';
import 'package:widget_lessons/assignments/assignment_three/components/choose_route.dart';
import 'package:widget_lessons/assignments/assignment_three/components/reuse_textfield.dart';
import 'package:widget_lessons/assignments/assignment_three/components/sign_in/sign_in_button.dart';
import 'package:widget_lessons/assignments/assignment_three/components/sign_in/sign_in_type.dart';
import 'sign_up.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  bool isSee = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGroundImage(
        childWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Glad To See You",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: .2,
                // color: Color.fromARGB(244, 132, 201, 53),
                color: Colors.green,
              ),
            ),
            SizedBox(height: 50),
            ReuseTextfield(
              hintText: "Email",
              prefixIcon: Icon(Icons.email_outlined),
              suffixIcon: SizedBox(),
              textInputType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(height: 20),
            ReuseTextfield(
              hintText: "Password",
              textInputType: TextInputType.name,
              obscureText: !isSee,
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
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    // color: Color.fromARGB(244, 132, 201, 53),
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SignInButton(),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  // color: Color.fromARGB(244, 132, 201, 53),
                  color: Colors.green,
                )),
                SizedBox(width: 5),
                Text(
                  "Or Login with",
                  style: TextStyle(
                    // color: Color.fromARGB(244, 132, 201, 53),
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                    child: Divider(
                  // color: Color.fromARGB(244, 132, 201, 53),
                  color: Colors.green,
                )),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SignInType(
                  imageUrl: Image.asset("assets/images/f.jpg"),
                  onTap: () {},
                ),
                SizedBox(width: 10),
                SignInType(
                  imageUrl: Image.asset("assets/images/g.jpg"),
                  onTap: () {},
                ),
                SizedBox(width: 10),
                SignInType(
                  imageUrl: Image.asset("assets/images/i.png"),
                  onTap: () {},
                ),
              ],
            ),
            Spacer(),
            ChooseRoute(
              leadingText: "Don't have any account ? ",
              trailingText: "Sign Up",
              routeWidget: RegisterUi(),
            ),
          ],
        ),
      ),
    );
  }
}
