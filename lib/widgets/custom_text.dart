import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

class CustomText extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final text, fontSize, fontWeight, color, overflow, textAlign, maxLines;
  const CustomText(
      {this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.overflow,
      this.textAlign,
      this.maxLines,
      key})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return TextRenderer(
      // text: widget.text,
      child: Text(
        widget.text,
        style: GoogleFonts.raleway(
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          color: widget.color,
        ),
        maxLines: widget.maxLines,
        overflow: widget.overflow,
        textAlign: widget.textAlign,
      ),
    );
  }
}
