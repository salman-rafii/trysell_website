import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';

import 'package:trysell_website/models/carousal_items_services.dart';
import 'package:trysell_website/screen_helper.dart';
import 'package:trysell_website/screens/home/components/my_carousal.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final CarouselController carouselController = CarouselController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String loremIpsum =
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, \nby injected humour, or randomised words which don't look even slightly believable. \nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. \nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. \nIt uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. \nThe generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.";
    List myCarousalData = [
      {
        "title": "Hybrid Mobile App Development",
        "description": loremIpsum,
        "image": "assets/images/MobileApp.png",
        "btnTXT": "Get Yours"
      },
      {
        "title": "Native Mobile App Development",
        "description": loremIpsum,
        "image": "assets/images/MobileApp.png",
        "btnTXT": "Get Yours"
      },
      {
        "title": "Website Development",
        "description": loremIpsum,
        "image": "assets/images/web-8.png",
        "btnTXT": "Let's Discuss"
      },
      {
        "title": "Digital Marketing",
        "description": loremIpsum,
        "image": "assets/images/DigitalMarketing.png",
        "btnTXT": "Let's Market"
      },
      {
        "title": "Graphics Designing",
        "description": loremIpsum,
        "image": "assets/images/Ai.png",
        "btnTXT": "Let's Design"
      },
      {
        "title": "Content Writing",
        "description": loremIpsum,
        "image": "assets/images/content writter.png",
        "btnTXT": "Let's Write"
      },
      {
        "title": "Artifical Intelligence",
        "description": loremIpsum,
        "image": "assets/images/Ai.png",
        "btnTXT": "Let's Innovate"
      },
      {
        "title": "Wordpress",
        "description": loremIpsum,
        "image": "assets/images/web-8.png",
        "btnTXT": "Get Yours"
      }
    ];
    // double carouselContainerHeight = MediaQuery.of(context).size.height *
    //     (ScreenHelper.isMobile(context) ? .7 : .85);
    // double carouselContainerHeight = MediaQuery.of(context).size.height;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "What We Do ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
            Text(
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
        const SizedBox(
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
        const SizedBox(
          height: 10,
        ),
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            // autoPlay: true,
            viewportFraction: 1,
            scrollPhysics: const NeverScrollableScrollPhysics(),
            // height: carouselContainerHeight,
          ),
          items: List.generate(
            carouselItemsServices.length,
            (index) => Builder(
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  // physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
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
                      // ScreenHelper(
                      //   // Responsive views
                      //   desktop: _buildDesktop(
                      //     context,
                      //     carouselItemsMAD[index].text!,
                      //     carouselItemsMAD[index].image!,
                      //   ),
                      //   tablet: _buildTablet(
                      //     context,
                      //     carouselItemsMAD[index].text!,
                      //     carouselItemsMAD[index].image!,
                      //   ),
                      //   mobile: _buildMobile(
                      //     context,
                      //     carouselItemsMAD[index].text!,
                      //     carouselItemsMAD[index].image!,
                      //   ),
                      // ),
                      // ScreenHelper(
                      //   // Responsive views
                      //   desktop: _buildDesktop(
                      //     context,
                      //     carouselItemsDM[index].image!,
                      //     carouselItemsDM[index].text!,
                      //   ),
                      //   tablet: _buildTablet(
                      //     context,
                      //     carouselItemsDM[index].image!,
                      //     carouselItemsServices[index].text!,
                      //   ),
                      //   mobile: _buildMobile(
                      //     context,
                      //     carouselItemsDM[index].image!,
                      //     carouselItemsDM[index].text!,
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            ),
          ).toList(),
        )
      ],
    );
  }
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
            return myCarousal(
              title: mycarousalData[index]["title"],
              description: mycarousalData[index]["description"],
              buttonText: mycarousalData[index]["btnTXT"],
              image: mycarousalData[index]["image"],
            );
          }));
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
