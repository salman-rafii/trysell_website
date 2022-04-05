import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/screen_helper.dart';
import 'package:trysell_website/screens/home/components/carousal.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.darken),
              image: const AssetImage('assets/images/software_developer.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Carousel(),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Our",
              style: TextStyle(
                color: kDarkBlackColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Services",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "TrySell has developed an effective strategy for providing the best IT services to clients  ",
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        ScreenHelper(
          desktop: ResponsiveWrapper(
            maxWidth: kDesktopMaxWidth,
            minWidth: kDesktopMaxWidth,
            defaultScale: false,
            // color: Colors.red,
            // width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20),
              itemCount: 3,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red[100],
                              child: Icon(
                                Icons.graphic_eq,
                                color: Colors.red[300],
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text(
                              "UI/UX Design",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 44),
                          child: const Text(
                            "UI/UX services refer to the team of skilled and creative UI/UX professionals with proven experience in the design and development industry. They are extremely knowledgeable about how end-users interact with the digital platforms and how to create user friendly interfaces for enjoyable customer experiences ",
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          mobile: ResponsiveWrapper(
            maxWidth: kDesktopMaxWidth,
            minWidth: kDesktopMaxWidth,
            defaultScale: false,
            // color: Colors.red,
            // width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20),
              itemCount: 3,
              itemBuilder: (BuildContext ctx, index) {
                return Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.design_services_outlined),
                          Text(
                            "UI/UX Design",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Text("UI/UX services refer to the team of skilled")
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        // Row(
        //   children: [
        //     Card(
        //       child: Column(
        //         children: [
        //           Row(
        //             children: const [
        //               Icon(Icons.design_services_outlined),
        //               Text(
        //                 "UI/UX Design",
        //                 style: TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.black,
        //                 ),
        //               )
        //             ],
        //           ),
        //           Text("UI/UX services refer to the team of skilled")
        //         ],
        //       ),
        //     ),
        //     Card(
        //       child: Column(
        //         children: [
        //           Row(
        //             children: const [
        //               Icon(Icons.design_services_outlined),
        //               Text(
        //                 "Digital Marketing",
        //                 style: TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.black,
        //                 ),
        //               )
        //             ],
        //           ),
        //           Text("UI/UX services refer to the team of ")
        //         ],
        //       ),
        //     )
        //   ],
        // )
      ],
    );
  }
}
