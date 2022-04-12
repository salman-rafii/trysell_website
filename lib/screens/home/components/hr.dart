import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/helpers/screen_helper.dart';
import 'package:trysell_website/helpers/services_helper.dart';
import 'package:trysell_website/models/services_list.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/custom_text_field.dart';
import 'package:trysell_website/widgets/my_elevated_button.dart';
import 'package:trysell_website/widgets/size_config.dart';

class HRView extends StatefulWidget {
  const HRView({
    Key? key,
  }) : super(key: key);

  @override
  State<HRView> createState() => _HRViewState();
}

class _HRViewState extends State<HRView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomText(
                  text: "HR Dashboard",
                  color: kDarkBlackColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            middleDivider(),
            SizedBox(
              height: MySize.size50,
            ),
            ScreenHelper(
              // Responsive views
              desktop: _buildDesktop(
                context,
                myCarousalData,
              ),
              tablet: _buildTablet(
                context,
                myCarousalData,
              ),
              mobile: _buildMobile(
                context,
                myCarousalData,
              ),
            ),
            SizedBox(
              height: MySize.size50,
            ),
            const Footer()
          ],
        ),
      ),
    );
  }

// Big screens
  Widget _buildDesktop(BuildContext context, List mycarousalData) {
    return ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomText(
                text: "Get In Touch With Us",
                color: kDarkBlackColor,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          middleDivider(),
          SizedBox(
            height: MySize.size50,
          ),
          lowerSection(context),
          SizedBox(
            height: MySize.size50,
          ),
        ],
      ),
    );
  }

  Row lowerSection(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const CustomTextField(hintText: "Enter Issue"),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  hintText: "Your Message",
                  maxLines: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyElevatedButton(
                  width: MediaQuery.of(context).size.width,
                  onPressed: () {},
                  child: const CustomText(text: "Send Message"),
                  borderRadius: BorderRadius.circular(10),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Image.asset(
                "assets/images/contact_us_2.png",
                height: MySize.size450,
                width: 450,
              )
            ],
          ),
        ),
      ],
    );
  }

  Row upperSectionView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/images/customer_service.png",
              width: MySize.size450,
              height: MySize.size450,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.mapLocationDot,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: "235 Usman Block Abbasia Town, Rahim Yar Khan",
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(text: "+92 3253186866")
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.email,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(text: "admin@trysell.com")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

// Mid screens
  Widget _buildTablet(BuildContext context, List mycarousalData) {
    return ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Column(
        children: [
          upperSectionView(),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const CustomTextField(hintText: "Enter Name"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Enter Email"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Enter Phone"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Enter Subject"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Your Message"),
                    const SizedBox(
                      height: 10,
                    ),
                    MyElevatedButton(
                      width: MediaQuery.of(context).size.width,
                      onPressed: () {},
                      child: const CustomText(text: "Send Message"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [Image.asset("assets/images/contact_us_2.png")],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

// SMall Screens

  Widget _buildMobile(BuildContext context, List mycarousalData) {
    return ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Column(
        children: [
          upperSectionView(),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const CustomTextField(hintText: "Enter Name"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Enter Email"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Enter Phone"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Enter Subject"),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomTextField(hintText: "Your Message"),
                    const SizedBox(
                      height: 10,
                    ),
                    MyElevatedButton(
                      width: MediaQuery.of(context).size.width,
                      onPressed: () {},
                      child: const CustomText(text: "Send Message"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [Image.asset("assets/images/contact_us_2.png")],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
