import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/screens/home/components/contact_us.dart';
import 'package:trysell_website/screens/home/components/home_screen_view.dart';
import 'package:trysell_website/screens/home/components/services_view.dart';
import 'package:trysell_website/screens/home/blog_list_view.dart';
import 'package:trysell_website/widgets/size_config.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Builder(builder: (context) {
          return StickyHeader(
            header: Container(
                padding: EdgeInsets.all(30),
                color: Colors.white,
                child: const Header()),
            content: Column(
              children: [
                GetX<MenuController>(
                  builder: (_) => _controller.selectedIndex == 0
                      ? const HomeScreenView()
                      : _controller.selectedIndex == 1
                          ? const ServicesView()
                          : _controller.selectedIndex == 2
                              ? const ContactUs()
                              : BlogListView(),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
