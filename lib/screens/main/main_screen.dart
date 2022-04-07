import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/screens/home/components/home_screen_view.dart';
import 'package:trysell_website/screens/home/components/services.dart';
import 'package:trysell_website/screens/home/home_screen.dart';

import '../../constants.dart';
import '../home/components/services.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  MainScreen({Key? key}) : super(key: key);
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
              const Header(),
              GetX<MenuController>(
                builder: (_) => _controller.selectedIndex == 0
                    ? const HomeScreenView()
                    : _controller.selectedIndex == 1
                        ? const Services()
                        : _controller.selectedIndex == 2
                            ? const Text("View 3")
                            : Container(
                                padding: const EdgeInsets.all(kDefaultPadding),
                                constraints:
                                    const BoxConstraints(maxWidth: kMaxWidth),
                                child: const SafeArea(child: HomeScreen()),
                              ),
              )
            ],
          );
        }),
      ),
    );
  }
}
