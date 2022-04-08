// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/widgets/custom_image_widget.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/my_custom_button.dart';
import 'package:trysell_website/widgets/my_custom_text_field.dart';
import 'package:trysell_website/widgets/size_config.dart';
import 'package:trysell_website/widgets/wsizedbox.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    WSizedBox(wval: 0, hval: 0.2),
                    Row(
                      children: [
                        WSizedBox(wval: 0.05, hval: 0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'START FOR FREE',
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                            WSizedBox(wval: 0, hval: 0.02),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomText(
                                  text: 'Create new account',
                                  color: kDarkBlackColor,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: kPrimaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  height: 10,
                                  width: 10,
                                ),
                              ],
                            ),
                            WSizedBox(wval: 0, hval: 0.03),
                            Row(
                              children: [
                                CustomText(
                                  text: 'Already A member ?',
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed("/login");
                                  },
                                  child: CustomText(
                                    text: ' Log in',
                                    color: kPrimaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            WSizedBox(wval: 0, hval: 0.03),
                            Row(
                              children: [
                                MyCustomTextField(
                                    borderradius: 20,
                                    bordercolor: Color(0xffe3e3e3),
                                    widh: 0.15,
                                    height: 0.05,
                                    icon: Icons.credit_card,
                                    iconColor: Colors.grey,
                                    hinttext: 'First Name',
                                    hintColor: Colors.grey,
                                    fontsize: 15,
                                    obscureText: false),
                                WSizedBox(wval: 0.02, hval: 0),
                                MyCustomTextField(
                                    borderradius: 20,
                                    bordercolor: Color(0xffe3e3e3),
                                    widh: 0.15,
                                    height: 0.05,
                                    icon: Icons.credit_card,
                                    iconColor: Colors.grey,
                                    hinttext: 'Last Name',
                                    hintColor: Colors.grey,
                                    fontsize: 15,
                                    obscureText: false),
                              ],
                            ),
                            WSizedBox(wval: 0, hval: 0.02),
                            const MyCustomTextField(
                                borderradius: 20,
                                bordercolor: Color(0xffe3e3e3),
                                widh: 0.32,
                                height: 0.05,
                                icon: Icons.mail,
                                iconColor: Colors.grey,
                                hinttext: 'Email',
                                hintColor: Colors.grey,
                                fontsize: 15,
                                obscureText: false),
                            WSizedBox(wval: 0, hval: 0.02),
                            const MyCustomTextField(
                                borderradius: 20,
                                bordercolor: Color(0xffe3e3e3),
                                widh: 0.32,
                                height: 0.05,
                                icon: Icons.lock,
                                iconColor: Colors.grey,
                                hinttext: 'Password',
                                hintColor: Colors.grey,
                                fontsize: 15,
                                obscureText: true),
                            WSizedBox(wval: 0, hval: 0.04),
                            MyCustomButton(
                              buttontext: 'Register',
                              width: 0.32,
                              height: 0.05,
                              bordercolor: kPrimaryColor,
                              borderradius: 25,
                              fontsize: 12,
                              fontweight: FontWeight.bold,
                              fontcolor: Colors.white,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(right: 20),
              color: Colors.white,
              child: Image.asset(
                "assets/images/sign_up.png",
                height: MediaQuery.of(context).size.height,
                width: MySize.size700,
              ))
        ],
      ),
    );
  }
}
