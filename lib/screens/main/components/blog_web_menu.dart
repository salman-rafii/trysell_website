import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/blog_menu_controller.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/widgets/custom_text.dart';

import '../../../constants.dart';

class BlogWebMenu extends StatelessWidget {
  final BlogMenuController _controller = Get.put(BlogMenuController());

  BlogWebMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
          _controller.menuItems.length,
          (index) => BlogWebMenuItem(
            text: _controller.menuItems[index],
            isActive: index == _controller.selectedIndex,
            press: () => _controller.setMenuIndex(index),
          ),
        ),
      ),
    );
  }
}

class BlogWebMenuItem extends StatefulWidget {
  const BlogWebMenuItem({
    Key? key,
    required this.isActive,
    required this.text,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<BlogWebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        // decoration: BoxDecoration(
        //   border: Border(
        //     bottom: BorderSide(color: _borderColor(), width: 3),
        //   ),
        // ),
        child: CustomText(
          text: widget.text,
          color: kDarkBlackColor,
          fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }
}
