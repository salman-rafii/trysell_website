import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/blog_menu_controller.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/responsive.dart';

import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class BlogHeader extends StatefulWidget {
  const BlogHeader({Key? key}) : super(key: key);

  @override
  State<BlogHeader> createState() => _HeaderState();
}

class _HeaderState extends State<BlogHeader> {
  final BlogMenuController _controller = Get.put(BlogMenuController());
  final MenuController _menucontroller = Get.put(MenuController());
  bool onHomeHover = false;
  bool onServicesHover = false;
  bool onContactUsHover = false;
  bool onBlogHover = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: kDarkBlackColor,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      if (Responsive.isDesktop(context))
                        InkWell(
                          onTap: () {
                            Get.toNamed("/");
                            _menucontroller.setMenuIndex(0);
                          },
                          child: Image.asset(
                            "assets/images/Trysell.png",
                            width: 200,
                          ),
                        ),

                      const Spacer(),
                      if (Responsive.isDesktop(context))
                        Row(
                          children: [
                            InkWell(
                              // key: UniqueKey(),
                              onHover: (value) {
                                setState(() {
                                  onHomeHover = value;
                                });
                              },
                              onTap: () {
                                Get.toNamed("/");
                                _menucontroller.setMenuIndex(0);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding / 2),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: onHomeHover
                                            ? kPrimaryColor
                                            : Colors.transparent,
                                        width: 3),
                                  ),
                                ),
                                child: const CustomText(
                                  text: "Home",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MySize.size30,
                            ),
                            InkWell(
                              // key: UniqueKey(),
                              onHover: (value) {
                                setState(() {
                                  onServicesHover = value;
                                });
                              },
                              onTap: () {
                                Get.toNamed("/");
                                _menucontroller.setMenuIndex(1);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding / 2),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: onServicesHover
                                            ? kPrimaryColor
                                            : Colors.transparent,
                                        width: 3),
                                  ),
                                ),
                                child: const CustomText(
                                  text: "Services",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MySize.size30,
                            ),
                            InkWell(
                              // key: UniqueKey(),
                              onHover: (value) {
                                setState(() {
                                  onContactUsHover = value;
                                });
                              },
                              onTap: () {
                                Get.toNamed("/");
                                _menucontroller.setMenuIndex(2);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding / 2),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: onContactUsHover
                                            ? kPrimaryColor
                                            : Colors.transparent,
                                        width: 3),
                                  ),
                                ),
                                child: const CustomText(
                                  text: "Contact Us",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MySize.size30,
                            ),
                            InkWell(
                              // key: UniqueKey(),
                              onHover: (value) {
                                setState(() {
                                  onBlogHover = value;
                                });
                              },
                              onTap: () {
                                Get.toNamed("/");
                                _menucontroller.setMenuIndex(3);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: kDefaultPadding / 2),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: onBlogHover
                                            ? kPrimaryColor
                                            : Colors.transparent,
                                        width: 3),
                                  ),
                                ),
                                child: const CustomText(
                                  text: "Blog",
                                ),
                              ),
                            ),
                          ],
                        ),
                      // BlogWebMenu(),
                      const Spacer(),
                      // Socal
                      const Socal(),
                    ],
                  ),

                  // const SizedBox(height: kDefaultPadding * 2),

                  // GetX<MenuController>(
                  //   builder: (_) => _controller.selectedIndex == 0
                  //       ? welcomeToView(title: "Welcome to Trysell Solutions")
                  //       : _controller.selectedIndex == 1
                  //           ? welcomeToView(title: "Welcome to Our Services")
                  //           : _controller.selectedIndex == 2
                  //               ? welcomeToView(title: "Contact Us")
                  //               : welcomeToView(title: "Welcome to Our Blog"),
                  // ),
                  // if (Responsive.isDesktop(context))
                  //   const SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Column welcomeToView({title}) {
  //   return Column(
  //     children: [
  //       Text(
  //         "$title",
  //         style: const TextStyle(
  //           fontSize: 32,
  //           color: kDarkBlackColor,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       const Padding(
  //         padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
  //         child: Text(
  //           "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: kDarkBlackColor,
  //             fontFamily: 'Raleway',
  //             height: 1.5,
  //           ),
  //         ),
  //       ),
  //       FittedBox(
  //         child: TextButton(
  //           onPressed: () {},
  //           child: Row(
  //             children: const [
  //               Text(
  //                 "Learn More",
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   color: kDarkBlackColor,
  //                 ),
  //               ),
  //               SizedBox(width: kDefaultPadding / 2),
  //               Icon(
  //                 Icons.arrow_forward,
  //                 color: kDarkBlackColor,
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

}
