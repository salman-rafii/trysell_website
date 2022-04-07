import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  final text, fontSize, fontWeight, color, overflow, textAlign;
  const CustomText(
      {this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.overflow,
      this.textAlign,
      key})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.raleway(
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          color: widget.color),
      overflow: widget.overflow,
      textAlign: widget.textAlign,
    );
  }
}
