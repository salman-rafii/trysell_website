import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/helpers/screen_helper.dart';

class WhatWeProvide extends StatefulWidget {
  final Widget? text, image;
  const WhatWeProvide({Key? key, this.text, this.image}) : super(key: key);

  @override
  State<WhatWeProvide> createState() => _WhatWeProvideState();
}

class _WhatWeProvideState extends State<WhatWeProvide> {
  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);
    return Container(
      constraints: BoxConstraints(
        minHeight: carouselContainerHeight,
      ),
      child: ScreenHelper(
        // Responsive views
        desktop: _buildDesktop(
          context,
          widget.text!,
          widget.image!,
        ),
        tablet: _buildTablet(
          context,
          widget.text!,
          widget.image!,
        ),
        mobile: _buildMobile(
          context,
          widget.text!,
          widget.image!,
        ),
      ),
    );
  }

  // Big screens
  Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
    return Center(
      child: ResponsiveWrapper(
        maxWidth: kDesktopMaxWidth,
        minWidth: kDesktopMaxWidth,
        defaultScale: false,
        child: Row(
          children: [
            Expanded(
              child: text,
            ),
            Expanded(
              child: image,
            )
          ],
        ),
      ),
    );
  }

// Mid screens
  Widget _buildTablet(BuildContext context, Widget text, Widget image) {
    return Center(
      child: ResponsiveWrapper(
        maxWidth: kTabletMaxWidth,
        minWidth: kTabletMaxWidth,
        defaultScale: false,
        child: Row(
          children: [
            Expanded(
              child: text,
            ),
            Expanded(
              child: image,
            )
          ],
        ),
      ),
    );
  }

// SMall Screens

  Widget _buildMobile(BuildContext context, Widget text, Widget image) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: getMobileMaxWidth(context),
      ),
      width: double.infinity,
      child: text,
    );
  }
}
