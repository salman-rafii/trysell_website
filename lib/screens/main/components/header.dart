import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/responsive.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final MenuController _controller = Get.put(MenuController());
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
                            _controller.setMenuIndex(0);
                          },
                          child: Image.asset(
                            "assets/images/Trysell.png",
                            width: 200,
                          ),
                        ),

                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
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
