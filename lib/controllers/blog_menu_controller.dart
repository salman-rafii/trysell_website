import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class BlogMenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _abcKey = GlobalKey<ScaffoldState>();
  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => [
        "Home",
        "Services",
        "Contact Us",
        "Blog",
      ];

  GlobalKey<ScaffoldState> get scaffoldkey => _abcKey;

  void openOrCloseDrawer() {
    if (_abcKey.currentState!.isDrawerOpen) {
      _abcKey.currentState!.openEndDrawer();
    } else {
      _abcKey.currentState!.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;

    print(_selectedIndex);
  }
}
