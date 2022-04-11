import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/blog_menu_controller.dart';

import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

import '../../../constants.dart';

class BlogSideMenu extends StatefulWidget {
  const BlogSideMenu({Key? key}) : super(key: key);

  @override
  State<BlogSideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<BlogSideMenu> {
  final BlogMenuController _controller = Get.put(BlogMenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: UniqueKey(),
      child: Container(
        color: kDarkBlackColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3.5),
                child: Image.asset("assets/images/Trysell.png"),
              ),
            ),
            Column(
              children: [
                InkWell(
                  // key: UniqueKey(),
                  onHover: (value) {},
                  onTap: () {
                    Get.toNamed("/");
                    _controller.setMenuIndex(0);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 3),
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
                  onHover: (value) {},
                  onTap: () {
                    Get.toNamed("/");
                    _controller.setMenuIndex(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 3),
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
                  onHover: (value) {},
                  onTap: () {
                    Get.toNamed("/");
                    _controller.setMenuIndex(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 3),
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
                  onHover: (value) {},
                  onTap: () {
                    Get.toNamed("/");
                    _controller.setMenuIndex(3);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 3),
                      ),
                    ),
                    child: const CustomText(
                      text: "Blog",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BlogDrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const BlogDrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
