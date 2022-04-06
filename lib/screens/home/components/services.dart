import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/models/carousal_items_MAD.dart';
import 'package:trysell_website/models/carousal_items_services.dart';
import 'package:trysell_website/screen_helper.dart';

class Services extends StatefulWidget {
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final CarouselController carouselController = CarouselController();
  @override
  void initState() {
    super.initState();
    print(carouselItemsServices.length);
  }

  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);
    return Container(
      height: carouselContainerHeight,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "What We Do ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                  ),
                ),
                const Text(
                  "For You!",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              "Lorem Ipsum Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum  Lorem Ipsum \n  Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum.",
              style: TextStyle(
                color: Color.fromRGBO(166, 177, 187, 1),
                fontSize: 12.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  // autoPlay: true,
                  viewportFraction: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  height: carouselContainerHeight,
                ),
                items: List.generate(
                  carouselItemsServices.length,
                  (index) => Builder(
                    builder: (BuildContext context) {
                      return Container(
                        constraints: BoxConstraints(
                          minHeight: carouselContainerHeight,
                        ),
                        child: SingleChildScrollView(
                          physics:NeverScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              ScreenHelper(
                                // Responsive views
                                desktop: _buildDesktop(
                                  context,
                                  carouselItemsServices[index].image!,
                                  carouselItemsServices[index].text!,
                                ),
                                tablet: _buildTablet(
                                  context,
                                  carouselItemsServices[index].image!,
                                  carouselItemsServices[index].text!,
                                ),
                                mobile: _buildMobile(
                                  context,
                                  carouselItemsServices[index].image!,
                                  carouselItemsServices[index].text!,
                                ),
                              ),
                              ScreenHelper(
                                // Responsive views
                                desktop: _buildDesktop(
                                  context,
                                  carouselItemsMAD[index].text!,
                                  carouselItemsMAD[index].image!,
                                ),
                                tablet: _buildTablet(
                                  context,
                                  carouselItemsMAD[index].text!,
                                  carouselItemsMAD[index].image!,
                                ),
                                mobile: _buildMobile(
                                  context,
                                  carouselItemsMAD[index].text!,
                                  carouselItemsMAD[index].image!,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Big screens
Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: text,
              ),
              Expanded(
                child: image,
              )
            ],
          ),
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}
