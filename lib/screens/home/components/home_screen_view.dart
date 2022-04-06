import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/responsive.dart';
import 'package:trysell_website/screen_helper.dart';
import 'package:trysell_website/screens/home/components/carousal.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/widgets/CustomText.dart';

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
          // height: MediaQuery.of(context).size.height,
          child: Carousel(),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomText(
              text: "Our",
              color: kDarkBlackColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: 4,
            ),
            CustomText(
              text: "Services",
              color: kPrimaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CustomText(
              text:
                  "TrySell has developed an effective strategy for providing the best IT services to clients  ",
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        ScreenHelper(
          desktop: buildServicesGridViewSection(
              context, servicesList, kDesktopMaxWidth),
          mobile: buildServicesGridViewSection(
            context,
            servicesList,
            getMobileMaxWidth(context),
          ),
          tablet: buildServicesGridViewSection(
            context,
            servicesList,
            kTabletMaxWidth,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomText(
              text: "What Makes us",
              color: kDarkBlackColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: 4,
            ),
            CustomText(
              text: "Different",
              color: kPrimaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Footer()
      ],
    );
  }

  ResponsiveWrapper buildServicesGridViewSection(
      BuildContext context, List<dynamic> servicesList, double width) {
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      // color: Colors.red,
      // width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width < 650 ? 1 : 3,
            // maxCrossAxisExtent: 200,
            //change

            childAspectRatio:
                MediaQuery.of(context).size.width < 650 ? 5 / 2 : 3 / 2,
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
                    CustomText(
                      text: title,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                child: CustomText(
                  text: description,
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
