import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/widgets/custom_text.dart';
import 'package:trysell_website/widgets/size_config.dart';

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
        return Container(
          child: servicesCard(
              title: servicesList[index]["title"],
              description: servicesList[index]["description"],
              icon: servicesList[index]["icon"],
              backgroundColor: servicesList[index]["backgroundColor"],
              iconColor: servicesList[index]["iconColor"]),
        );
      },
    ),
  );
}

Row middleDivider() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    SizedBox(
      width: MySize.size80,
      child: const Divider(
        thickness: 2,
        color: kPrimaryColor,
      ),
    )
  ]);
}

Widget servicesCard({title, description, icon, backgroundColor, iconColor}) {
  return Card(
    elevation: 5,
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            // padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: backgroundColor,
                  // radius: 26,
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: title,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey[100],
        ),
        Expanded(
          flex: 2,
          child: Container(
            // color: Colors.red,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: CustomText(
              text: description,
              textAlign: TextAlign.justify,
            ),
          ),
        )
      ],
    ),
  );
}
