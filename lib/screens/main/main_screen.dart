import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/MenuController.dart';
import 'package:trysell_website/screens/home/components/carousal.dart';
import 'package:trysell_website/screens/home/components/home_screen_view.dart';
import 'package:trysell_website/screens/home/home_screen.dart';

import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Column(
            children: [
              Header(),
              GetX<MenuController>(
                builder: (_) => _controller.selectedIndex == 0
                    ? const HomeScreenView()
                    : _controller.selectedIndex == 1
                        ? Container(
                            child: Text("View 2"),
                          )
                        : _controller.selectedIndex == 2
                            ? Container(child: Text("View 3"))
                            : Container(
                                padding: EdgeInsets.all(kDefaultPadding),
                                constraints:
                                    BoxConstraints(maxWidth: kMaxWidth),
                                child: SafeArea(child: HomeScreen()),
                              ),
              )
            ],
          );
        }),
      ),
    );
  }
}
