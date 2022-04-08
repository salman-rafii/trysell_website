// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trysell_website/widgets/custom_image_widget.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/my_custom_button.dart';
import 'package:trysell_website/widgets/my_custom_text_field.dart';
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
              color: const Color.fromARGB(255, 40, 42, 57),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                          text: '  Anywhere App.',
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                        ),
                        WSizedBox(wval: 0.1, hval: 0),
                        CustomText(
                          text: 'Home',
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                        WSizedBox(wval: 0.1, hval: 0),
                        CustomText(
                          text: 'Join',
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
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
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  height: 10,
                                  width: 10,
                                ),
                              ],
                            ),
                            WSizedBox(wval: 0, hval: 0.03),
                            Row(
                              children: const [
                                CustomText(
                                  text: 'Already A member ?',
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                                CustomText(
                                  text: ' Log in',
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ],
                            ),
                            WSizedBox(wval: 0, hval: 0.03),
                            Row(
                              children: [
                                MyCustomTextField(
                                    borderradius: 20,
                                    bordercolor:
                                        Color.fromARGB(255, 50, 54, 69),
                                    widh: 0.15,
                                    height: 0.05,
                                    icon: Icons.credit_card,
                                    iconColor: Colors.grey,
                                    hinttext: 'first name',
                                    hintColor: Colors.grey,
                                    fontsize: 15,
                                    obscureText: false),
                                WSizedBox(wval: 0.02, hval: 0),
                                MyCustomTextField(
                                    borderradius: 20,
                                    bordercolor:
                                        Color.fromARGB(255, 50, 54, 69),
                                    widh: 0.15,
                                    height: 0.05,
                                    icon: Icons.credit_card,
                                    iconColor: Colors.grey,
                                    hinttext: 'last name',
                                    hintColor: Colors.grey,
                                    fontsize: 15,
                                    obscureText: false),
                              ],
                            ),
                            WSizedBox(wval: 0, hval: 0.02),
                            const MyCustomTextField(
                                borderradius: 20,
                                bordercolor: Color.fromARGB(255, 50, 54, 69),
                                widh: 0.32,
                                height: 0.05,
                                icon: Icons.mail,
                                iconColor: Colors.grey,
                                hinttext: 'email',
                                hintColor: Colors.grey,
                                fontsize: 15,
                                obscureText: false),
                            WSizedBox(wval: 0, hval: 0.02),
                            const MyCustomTextField(
                                borderradius: 20,
                                bordercolor: Color.fromARGB(255, 50, 54, 69),
                                widh: 0.32,
                                height: 0.05,
                                icon: Icons.lock,
                                iconColor: Colors.grey,
                                hinttext: 'password',
                                hintColor: Colors.grey,
                                fontsize: 15,
                                obscureText: true),
                            WSizedBox(wval: 0, hval: 0.04),
                            Row(
                              children: [
                                MyCustomButton(
                                  buttontext: 'change method',
                                  width: 0.15,
                                  height: 0.05,
                                  bordercolor: Color.fromARGB(255, 84, 91, 105),
                                  borderradius: 25,
                                  fontsize: 12,
                                  fontweight: FontWeight.bold,
                                  fontcolor: Colors.white,
                                  onPressed: () {},
                                ),
                                WSizedBox(wval: 0.02, hval: 0),
                                MyCustomButton(
                                  buttontext: 'create account',
                                  width: 0.15,
                                  height: 0.05,
                                  bordercolor:
                                      const Color.fromARGB(255, 29, 144, 244),
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
                  ],
                ),
              ),
            ),
          ),
          const CustomImageWidget(
            height: 1,
            width: 0.5,
            imgpath: 'assets/images/bg.png',
          ),
        ],
      ),
    );
  }
}
