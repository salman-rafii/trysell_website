import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/MenuController.dart';
import 'package:trysell_website/responsive.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatefulWidget {
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
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      Image.asset(
                        "assets/images/Trysell.png",
                        width: 200,
                      ),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      const Spacer(),
                      // Socal
                      const Socal(),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 2),
                  GetX<MenuController>(
                      builder: (_) => _controller.selectedIndex == 0
                          ? Column(
                              children: [
                                const Text(
                                  "Welcome to Trysell Solutions",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: kDefaultPadding),
                                  child: Text(
                                    "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Raleway',
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        Text(
                                          "Learn More",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: kDefaultPadding / 2),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : _controller.selectedIndex == 1
                              ? Column(
                                  children: [
                                    const Text(
                                      "Welcome to  Our Services",
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: kDefaultPadding),
                                      child: Text(
                                        "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Raleway',
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                    FittedBox(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: const [
                                            Text(
                                              "Learn More",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                                width: kDefaultPadding / 2),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : _controller.selectedIndex == 2
                                  ? Column(
                                      children: [
                                        const Text(
                                          "Contact Us",
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: kDefaultPadding),
                                          child: Text(
                                            "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Raleway',
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                        FittedBox(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: const [
                                                Text(
                                                  "Learn More",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: kDefaultPadding / 2),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        const Text(
                                          "Welcome to Our Blog",
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: kDefaultPadding),
                                          child: Text(
                                            "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Raleway',
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                        FittedBox(
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: const [
                                                Text(
                                                  "Learn More",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: kDefaultPadding / 2),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                  if (Responsive.isDesktop(context))
                    const SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
