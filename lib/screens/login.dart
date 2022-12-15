import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_ui/widgets/textfield.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFdcdbdc),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
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
              MyTextField(),
              const SizedBox(
                height: 25,
              ),
              MyTextField(),
              
            ],
          ),
        ),
      ),
    );
  }
}
