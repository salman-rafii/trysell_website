import 'package:flutter/material.dart';
import 'package:trysell_website/constants.dart';

Widget myCarousal({title, description, buttonText, image}) {
  return Row(
    children: [
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // const Text(
            //   "TRYSELL SOLUTIONS",
            //   style: TextStyle(
            //     color: kPrimaryColor,
            //     fontWeight: FontWeight.w900,
            //     fontSize: 20.0,
            //   ),
            // ),
            // const SizedBox(
            //   height: 18.0,
            // ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              description,
              maxLines: 1,
              overflow: TextOverflow.visible,
              style: const TextStyle(
                color: kCaptionColor,
                fontSize: 15.0,
                height: 1.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Wrap(
              children: [
                Text(
                  "Need $title Services?",
                  style: const TextStyle(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      " Got a project? Let's talk.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
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
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      Expanded(
        child: Column(children: [
          Image.asset(
            "$image",
            fit: BoxFit.contain,
            height: 450,
            width: 450,
          ),
        ],),
      )
    ],
  );
}
