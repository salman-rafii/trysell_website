import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trysell_website/widgets/CustomText.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Socal extends StatelessWidget {
  const Socal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/behance-alt.svg"),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/feather_twitter.svg"),
        const SizedBox(width: kDefaultPadding),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const CustomText(
                text: "Login",
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kDarkBlackColor,
              ),
            ),
            const SizedBox(width: 10),
            const CustomText(
              text: "|",
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
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
