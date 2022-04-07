import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => [
        "Home",
        "Services",
        "Contact Us",
        "Blog",
      ];
  List<Widget> myWidgets = [
    const Text("one"),
    const Text("two"),
    const Text("Three"),
    const Text("Four")
  ];
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
