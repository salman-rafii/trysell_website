import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

Widget myCarousalLeft({title, description, buttonText, image}) {
  final MenuController _controller = Get.find();
  return Row(
    children: [
      Expanded(
        child: Column(
          children: [
            Image.asset(
              "$image",
              fit: BoxFit.contain,
              height: 450,
              width: 450,
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              text: title,
              color: Colors.black,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
            ),
            SizedBox(
              height: MySize.size30,
            ),
            CustomText(
              text: description,
              maxLines: 1,
              overflow: TextOverflow.visible,
              color: kCaptionColor,
              fontSize: 15.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Wrap(
              children: [
                CustomText(
                  text: "Need $title Services?",
                  color: kCaptionColor,
                  fontSize: 15.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: CustomText(
                      text: " Got a project? Let's talk.",
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                ),
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
                    _controller.setMenuIndex(2);
                  },
                  child: CustomText(
                    text: buttonText,
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
