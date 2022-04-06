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
    List servicesList = [
      {
        "title": "UI/UX Design",
        "description":
            "UI/UX services refer to the team of skilled and creative UI/UX professionals with proven experience in the design and development industry. They are extremely knowledgeable about how end-users interact with the digital platforms ",
        "icon": Icons.graphic_eq,
        "backgroundColor": Colors.red[100],
        "iconColor": Colors.red[300]
      },
      {
        "title": "Digital Marketing",
        "description":
            "We’re not a static company. We don’t limit ourselves to specific industries. Thrive has the experience and professionals to build a custom website and use multiple digital marketing services to assist any size company in any industry.",
        "icon": Icons.people_outline,
        "backgroundColor": Colors.amber[100],
        "iconColor": Colors.amber[300]
      },
      {
        "title": "Web & Mobile Development",
        "description":
            "Put your business online and get more sales & leads with the quality and professional web development services. We have experience in all facets of web development to help our clients reach their full digital potential",
        "icon": Icons.web_asset_off_outlined,
        "backgroundColor": Colors.green[100],
        "iconColor": Colors.green[300]
      },
    ];

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
          children: const [
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
                  //change

                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 20),
              itemCount: servicesList.length,
              itemBuilder: (BuildContext ctx, index) {
                return servicesCard(
                    title: servicesList[index]["title"],
                    description: servicesList[index]["description"],
                    icon: servicesList[index]["icon"],
                    backgroundColor: servicesList[index]["backgroundColor"],
                    iconColor: servicesList[index]["iconColor"]);
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

  Card servicesCard({title, description, icon, backgroundColor, iconColor}) {
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.green,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(
                        icon,
                        color: iconColor,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Raleway",
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.red,
                padding: const EdgeInsets.only(left: 44),
                child: Text(
                  description,
                  textAlign: TextAlign.left,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
