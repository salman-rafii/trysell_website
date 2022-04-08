import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return _buildDesktop(context);
  }

  // Big screens
  Widget _buildDesktop(
    BuildContext context,
  ) {
    return Center(
      child: ResponsiveWrapper(
          maxWidth: kDesktopMaxWidth,
          minWidth: kDesktopMaxWidth,
          defaultScale: false,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/about_us.png",
                      fit: BoxFit.contain,
                      height: 420,
                      width: 420,
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
                    const CustomText(
                      text:
                          "Try Sell deliver high-quality digital solutions worldwide. for companies looking to gain better visibility on the internet. Try Sell is an innovative digital Solution Company, operating at the next level and taking consumers on a cost-effective path. ",
                      maxLines: 10,
                      overflow: TextOverflow.visible,
                      color: kBodyTextColor,
                      fontSize: 15.0,
                    ),
                    SizedBox(
                      height: MySize.size30,
                    ),
                    const CustomText(
                      text:
                          "We work with full passion, dedication, creativity, integrity, and commitment. By providing multiple problem-solving services, you can productively improve your exposure online.",
                      maxLines: 10,
                      overflow: TextOverflow.visible,
                      color: kBodyTextColor,
                      fontSize: 15.0,
                    ),
                    SizedBox(
                      height: MySize.size30,
                    ),
                    const CustomText(
                      text:
                          "We are committed to providing our customers with the best facilities. We want to use our creative skills as we know that our customers demand something extraordinary from us. It is also important that we have a consistent plan in mind to support our customers so that they can achieve the aim of offering them the highest quality services.",
                      maxLines: 10,
                      overflow: TextOverflow.visible,
                      color: kBodyTextColor,
                      fontSize: 15.0,
                    ),
                    SizedBox(
                      height: MySize.size30,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
