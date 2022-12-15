import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {required this.controller,
      required this.hinttext,
      required this.obscuretext,
      super.key});

  final TextEditingController controller;
  final String hinttext;
  final bool obscuretext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFb5b4b6))),
          fillColor: Color(0xFFecebec),
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey[500])),
    );
  }
}
