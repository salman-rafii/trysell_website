import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/controllers/blog_menu_controller.dart';
import 'package:trysell_website/controllers/menu_controller.dart';
import 'package:trysell_website/responsive.dart';
import 'package:trysell_website/screens/home/blog_list_view.dart';
import 'package:trysell_website/screens/home/components/categories.dart';
import 'package:trysell_website/screens/home/components/contact_us.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/screens/home/components/search.dart';
import 'package:trysell_website/screens/home/components/services_view.dart';
import 'package:trysell_website/screens/main/components/blog_header.dart';
import 'package:trysell_website/widgets/hover_image.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../../../constants.dart';

class ReadBlog extends StatefulWidget {
  const ReadBlog({
    Key? key,
  }) : super(key: key);

  @override
  State<ReadBlog> createState() => _ReadBlogState();
}

class _ReadBlogState extends State<ReadBlog> {
  final BlogMenuController _controller = Get.put(BlogMenuController());
  final s = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: StickyHeader(
          header: Container(padding: const EdgeInsets.only(bottom: 30),color:Colors.white,child: const BlogHeader()),
          content: Column(
            children: [

              GetX<BlogMenuController>(builder: (_) {
                if (_controller.selectedIndex == 0) {
                  return blogDetailsView(context);
                } else if (_controller.selectedIndex == 1) {
                  return const ServicesView();
                } else if (_controller.selectedIndex == 2) {
                  return const ContactUs();
                } else if (_controller.selectedIndex == 3) {
                  Get.back();
                }
                return Container();
              }),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Row blogDetailsView(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SelectableText(
                      s.category.toUpperCase(),
                      style: const TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    SelectableText(
                      s.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: SelectableText(
                    s.title.toString(),
                    maxLines: 2,

                    style: TextStyle(overflow: TextOverflow.ellipsis,
                      fontSize: Responsive.isDesktop(context) ? 32 : 24,
                      fontFamily: "Raleway",
                      color: kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 1.78,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: HoverImage(
                      image: s.image,
                      opacity: 0.0,
                    ),
                  ),
                ),
                SelectableText(
                  s.description.toString(),
                  maxLines: 4,
                  style: const TextStyle(height: 1.5,overflow: TextOverflow.ellipsis,),
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          const SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: const [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                // SizedBox(height: kDefaultPadding),
                // RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
