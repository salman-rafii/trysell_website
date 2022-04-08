// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore_for_file: prefer_const_constructors
class MyCustomButton extends StatelessWidget {
  final String buttontext;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final String? mode;
  final Color bordercolor;
  //final Color containercolor;
  final double borderradius;
  final double fontsize;
  final FontWeight fontweight;
  final Color fontcolor;
  final IconData? icon;
  final Color? iconColor;
  final String? cardStyle;

  const MyCustomButton({
    Key? key,
    //required this.containercolor,
    required this.buttontext,
    this.onPressed,
    required this.width,
    required this.height,
    this.mode,
    required this.bordercolor,
    required this.borderradius,
    required this.fontsize,
    required this.fontweight,
    required this.fontcolor,
    this.icon,
    this.iconColor,
    this.cardStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      child: RaisedButton(
        elevation: 0,
        onPressed: onPressed,
        color: bordercolor,
        shape: RoundedRectangleBorder(
          borderRadius: cardStyle == null
              ? BorderRadius.circular(10)
              : BorderRadius.only(
                  bottomLeft: Radius.circular(borderradius),
                  bottomRight: Radius.circular(borderradius)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttontext,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: fontcolor,
                  letterSpacing: .5,
                  fontWeight: fontweight,
                  fontSize: fontsize,
                ),
              ),
            ),
            if (icon != null)
              Icon(
                icon,
                color: iconColor,
              ),
          ],
        ),
      ),
    );
  }
}
