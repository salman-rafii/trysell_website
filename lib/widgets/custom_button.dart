// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:trysell_website/constants.dart';
import 'package:trysell_website/widgets/custom_text.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final title,
      route,
      width,
      height,
      bordercolor,
      borderradius,
      fontsize,
      fontweight,
      fontcolor;
  VoidCallback? onPressed;
  CustomButton(
      {Key? key,
      required this.title,
      this.route,
      this.onPressed,
      this.bordercolor,
      this.borderradius,
      this.fontcolor,
      this.fontsize,
      this.fontweight,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          primary: kPrimaryColor,
        ),
        onPressed: () => {
          onPressed,
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return route;
          }))
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomText(
            text: title,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
