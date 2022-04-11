import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/widgets/custom_text.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Socal extends StatefulWidget {
  const Socal({
    Key? key,
  }) : super(key: key);

  @override
  State<Socal> createState() => _SocalState();
}

class _SocalState extends State<Socal> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.find();
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset(
            "assets/icons/behance-alt.svg",
            color: const Color(0xff053eff),
          ),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: SvgPicture.asset(
              "assets/icons/feather_dribbble.svg",
              color: const Color(0xffea4c89),
            ),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset(
            "assets/icons/feather_twitter.svg",
            color: const Color(0xff1DA1F2),
          ),
        const SizedBox(width: kDefaultPadding),
        Row(
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  _isHover = value;
                });
              },
              child: GestureDetector(
                onTap: () {
                  Get.toNamed("/login");
                },
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: CustomText(
                    text: "Login",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: _isHover == true ? Colors.blue : kDarkBlackColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const CustomText(
              text: "|",
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {
                _controller.setMenuIndex(2);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                side: const BorderSide(width: 1.5, color: kPrimaryColor),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 1.5,
                  vertical:
                      kDefaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
                ),
              ),
              child: const Text("Let's Talk"),
            ),
          ],
        ),
      ],
    );
  }
}
