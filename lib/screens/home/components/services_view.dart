import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/helpers/screen_helper.dart';
import 'package:trysell_website/helpers/services_helper.dart';
import 'package:trysell_website/models/services_list.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/screens/home/components/my_carousal.dart';
import 'package:trysell_website/screens/home/components/my_carousal_left.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({
    Key? key,
  }) : super(key: key);

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomText(
              text: "Our Services",
              color: kDarkBlackColor,
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        middleDivider(),
        ScreenHelper(
          // Responsive views
          desktop: _buildDesktop(
            context,
            myCarousalData,
          ),
          tablet: _buildTablet(
            context,
            myCarousalData,
          ),
          mobile: _buildMobile(
            context,
            myCarousalData,
          ),
        ),
        SizedBox(
          height: MySize.size30,
        ),
        const Footer()
      ],
    );
  }

// Big screens
  Widget _buildDesktop(BuildContext context, List mycarousalData) {
    return ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: mycarousalData.length,
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return myCarousal(
              title: mycarousalData[index]["title"],
              description: mycarousalData[index]["description"],
              buttonText: mycarousalData[index]["btnTXT"],
              image: mycarousalData[index]["image"],
            );
          } else {
            return myCarousalLeft(
              title: mycarousalData[index]["title"],
              description: mycarousalData[index]["description"],
              buttonText: mycarousalData[index]["btnTXT"],
              image: mycarousalData[index]["image"],
            );
          }
        },
      ),
    );
  }

// Mid screens
  Widget _buildTablet(BuildContext context, List mycarousalData) {
    return ResponsiveWrapper(
        maxWidth: kDesktopMaxWidth,
        minWidth: kDesktopMaxWidth,
        defaultScale: false,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: mycarousalData.length,
            itemBuilder: (context, index) {
              return myCarousal(
                title: mycarousalData[index]["title"],
                description: mycarousalData[index]["description"],
                buttonText: mycarousalData[index]["btnTXT"],
                image: mycarousalData[index]["image"],
              );
            }));
  }

// SMall Screens

  Widget _buildMobile(BuildContext context, List mycarousalData) {
    return ResponsiveWrapper(
        maxWidth: kDesktopMaxWidth,
        minWidth: kDesktopMaxWidth,
        defaultScale: false,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: mycarousalData.length,
            itemBuilder: (context, index) {
              return myCarousal(
                title: mycarousalData[index]["title"],
                description: mycarousalData[index]["description"],
                buttonText: mycarousalData[index]["btnTXT"],
                image: mycarousalData[index]["image"],
              );
            }));
  }
}
