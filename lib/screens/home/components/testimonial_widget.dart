import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/models/testimonial.dart';
import 'package:trysell_website/helpers/screen_helper.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'dart:math' as math; // import this

final List<Testimonial> testimonials = [
  Testimonial(
    text:
        "This is a testimonial text from Janny Stone. Michele is a professional at what he does and never ceases to amaze me with his beautiful works. I will like to work with him in the future again.",
    occupation: "Product Designer",
    personName: "JANNY STONE",
    profilePhoto: "assets/images/female.png",
  ),
  Testimonial(
    text:
        "This is a testimonial text from Ken Williams. Michele is a professional at what he does and never ceases to amaze me with his beautiful works. I will like to work with him in the future again.",
    occupation: "Art Director",
    personName: "KEN WILLIAMS",
    profilePhoto: "assets/images/male.png",
  )
];

class TestimonialWidget extends StatelessWidget {
  const TestimonialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth),
      tablet: _buildUi(kTabletMaxWidth),
      mobile: _buildUi(getMobileMaxWidth(context)),
    );
  }
}

Widget _buildUi(double width) {
  return Center(
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45.0,
              ),
              Flex(
                direction: ScreenHelper.isMobile(context)
                    ? Axis.vertical
                    : Axis.horizontal,
                // Lets map
                children: testimonials.map((testimonial) {
                  return Expanded(
                    flex: ScreenHelper.isMobile(context) ? 0 : 1,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        // color: Colors.red,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.only(bottom: 10.0, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/quotes.png",
                                  color: kPrimaryColor,
                                  width: 50.0,
                                ),
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(math.pi),
                                  child: Image.asset(
                                    "assets/images/quotes.png",
                                    color: kPrimaryColor,
                                    width: 50.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: testimonial.text!,
                                color: kDarkBlackColor,
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                    testimonial.profilePhoto!,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: testimonial.personName!,
                                      color: kDarkBlackColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0,
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    CustomText(
                                      text: testimonial.occupation!,
                                      color: kCaptionColor,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    ),
  );
}
