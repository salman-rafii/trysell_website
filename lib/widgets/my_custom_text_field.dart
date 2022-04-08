// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  final double borderradius;
  final Color bordercolor;
  final TextEditingController? controller;
  final double widh;
  final double height;
  final IconData icon;
  final Color iconColor;
  final String hinttext;
  final Color hintColor;
  final Color? onlyborder;
  final double fontsize;
  final Color? textcolor;
  //final FontWeight fontweight;
  final bool obscureText;

  const MyCustomTextField({
    Key? key,
    required this.borderradius,
    required this.bordercolor,
    this.controller,
    required this.widh,
    required this.height,
    required this.icon,
    required this.iconColor,
    required this.hinttext,
    required this.hintColor,
    this.onlyborder,
    required this.fontsize,
    this.textcolor,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: onlyborder ?? Colors.transparent),
        borderRadius: BorderRadius.circular(10),
        color: bordercolor,
      ),
      width: MediaQuery.of(context).size.width * widh,
      height: MediaQuery.of(context).size.height * height,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.only(top: 16, left: 16),
        ),
        obscureText: obscureText,
        style: TextStyle(
          color: textcolor ?? hintColor,
        ),
      ),
    );
  }
}
