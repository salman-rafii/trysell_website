import 'package:flutter/material.dart';

class DesignProcess {
  final String? title;
  final String? imagePath;
  final String? subtitle;
  bool? ishover;

  DesignProcess(
      {@required this.title,
      @required this.imagePath,
      @required this.subtitle,
      this.ishover});
}
