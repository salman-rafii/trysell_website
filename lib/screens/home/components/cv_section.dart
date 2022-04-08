import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/models/design_process.dart';
import 'package:trysell_website/helpers/screen_helper.dart';
import 'package:trysell_website/widgets/custom_text.dart';

final List<DesignProcess> designProcesses = [
  DesignProcess(
    title: "DESIGN",
    imagePath: "assets/images/design.png",
    subtitle:
        "A full stack allround designer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "DEVELOP",
    imagePath: "assets/images/develop.png",
    subtitle:
        "A full stack allround developer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "WRITE",
    imagePath: "assets/images/write.png",
    subtitle:
        "A full stack allround writer thay may or may not include a guide for specific creative",
  ),
  DesignProcess(
    title: "PROMOTE",
    imagePath: "assets/images/promote.png",
    subtitle:
        "A full stack allround promoter thay may or may not include a guide for specific creative",
  ),
];

class WhatWeDo extends StatefulWidget {
  const WhatWeDo({Key? key}) : super(key: key);

  @override
  State<WhatWeDo> createState() => _WhatWeDoState();
}

class _WhatWeDoState extends State<WhatWeDo> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    // we need the context to get maxWidth before the constraints below
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (_context, constraints) {
              return ResponsiveGridView.builder(
                padding: const EdgeInsets.all(0.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                alignment: Alignment.topCenter,
                gridDelegate: ResponsiveGridDelegate(
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                          ScreenHelper.isMobile(context)
                      ? constraints.maxWidth / 2.0
                      : 250.0,
                  // Hack to adjust child height
                  childAspectRatio: ScreenHelper.isDesktop(context)
                      ? 1.4
                      : MediaQuery.of(context).size.aspectRatio * 1.5,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        _isHover = value;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xffe0e0e0),
                        ),
                      ),
                      // color: Colors.red,
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                designProcesses[index].imagePath!,
                                width: 40.0,
                                color: kPrimaryColor,
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              CustomText(
                                text: designProcesses[index].title!,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: kDarkBlackColor,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CustomText(
                            text: designProcesses[index].subtitle!,
                            color: kCaptionColor,
                            fontSize: 14.0,
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: designProcesses.length,
              );
            },
          )
        ],
      ),
    );
  }
}
