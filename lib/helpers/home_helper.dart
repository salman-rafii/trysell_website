import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/widgets/custom_text.dart';

Column homeBannerView() {
  final MenuController _controller = Get.find();

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(
        height: 18.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomText(
            text: "TRYSELL SOLUTIONS",
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 30.0,
          ),
          CustomText(
            text: "SECURE IT SOLUTIONS FOR A MORE SECURE ENVIRONMENT",
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
          ),
        ],
      ),
      const SizedBox(
        height: 10.0,
      ),
      Wrap(
        children: [
          const CustomText(
            text: "Need a service of your need?",
            color: kCaptionColor,
            fontSize: 15.0,
          ),
          GestureDetector(
            onTap: () {},
            child: const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: CustomText(
                text: " Got a project? Let's talk.",
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 25.0,
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 48.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 28.0,
          ),
          child: TextButton(
            onPressed: () {
              _controller.setMenuIndex(1);
            },
            child: const CustomText(
              text: "GET STARTED",
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ],
  );
}
