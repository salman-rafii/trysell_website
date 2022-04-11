import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysell_website/models/blog_data.dart';
import 'package:trysell_website/responsive.dart';
import 'package:trysell_website/screens/home/components/categories.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/screens/home/components/recent_posts.dart';
import 'package:trysell_website/screens/home/components/search.dart';
import 'package:trysell_website/screens/main/components/blog_header.dart';
import 'package:trysell_website/widgets/hover_image.dart';

import '../../../constants.dart';
import '../../main/components/header.dart';

class ReadBlog extends StatefulWidget {

  const ReadBlog({
    Key? key,
  }) : super(key: key);

  @override
  State<ReadBlog> createState() => _ReadBlogState();
}

class _ReadBlogState extends State<ReadBlog> {
  final s = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.white, child: BlogHeader()),
            Row(
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
                            Text(
                              s.category!.toUpperCase(),
                              style: const TextStyle(
                                color: kDarkBlackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: kDefaultPadding),
                            Text(
                              s.date!,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Text(
                            s.title.toString(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
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
                        Text(
                          s.description.toString(),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(height: 1.5),
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
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
