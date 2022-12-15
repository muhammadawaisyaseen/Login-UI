import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_ui/screens/google_apple_btn.dart';
import 'package:login_ui/screens/signin_button.dart';
import 'package:login_ui/widgets/textfield.dart';

class MyLoginPage extends StatelessWidget {
  MyLoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdcdbdc),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/lock.png",
                height: 80,
                width: 80,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcom back you've been missed!",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              // InputDecoration? decoration = const InputDecoration(),
              MyTextField(
                controller: usernameController,
                hinttext: 'username',
                obscuretext: false,
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: passwordController,
                hinttext: 'password',
                obscuretext: true,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: Color(0xFF929192)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              LoginButton(),
              const SizedBox(
                height: 40,
              ),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[500],
                      thickness: 0.5,
                    ),
                  ),
                  const Text(
                    "Or continue with",
                    style: TextStyle(color: Color(0xFF929192)),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[500],
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    image: "assets/images/google.png",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTile(
                    image: "assets/images/apple.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Not a member?"),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
