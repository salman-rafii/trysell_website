import 'package:flutter/material.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/helpers/screen_helper.dart';
import 'package:trysell_website/helpers/services_helper.dart';
import 'package:trysell_website/models/services_list.dart';
import 'package:trysell_website/screens/home/components/about_us.dart';
import 'package:trysell_website/screens/home/components/carousal.dart';
import 'package:trysell_website/screens/home/components/cv_section.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/screens/home/components/testimonial_widget.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.darken),
              image: const AssetImage('assets/images/software_developer.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Carousel(),
        ),
        SizedBox(
          height: MySize.size80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "About Us",
              color: kDarkBlackColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: MySize.size4,
            ),
          ],
        ),
        middleDivider(),
        const AboutUs(),
        SizedBox(
          height: MySize.size80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "Our Services",
              color: kDarkBlackColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: MySize.size4,
            ),
          ],
        ),
        middleDivider(),
        SizedBox(
          height: MySize.size80,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomText(
              text:
                  "TrySell has developed an effective strategy for providing the best IT services to clients  ",
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(
          height: MySize.size80,
        ),
        ScreenHelper(
          desktop: buildServicesGridViewSection(
              context, servicesList, kDesktopMaxWidth),
          mobile: buildServicesGridViewSection(
            context,
            servicesList,
            getMobileMaxWidth(context),
          ),
          tablet: buildServicesGridViewSection(
            context,
            servicesList,
            kTabletMaxWidth,
          ),
        ),
        SizedBox(
          height: MySize.size80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "What We Do",
              color: kDarkBlackColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: MySize.size4,
            ),
          ],
        ),
        middleDivider(),
        SizedBox(
          height: MySize.size80,
        ),
        const WhatWeDo(),
        SizedBox(
          height: MySize.size80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomText(
              text: "Our Happy Clients",
              color: kDarkBlackColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        middleDivider(),
        SizedBox(
          height: MySize.size30,
        ),
        const TestimonialWidget(),
        SizedBox(
          height: MySize.size80,
        ),
        const Footer(),
      ],
    );
  }
}
