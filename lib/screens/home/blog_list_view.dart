import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trysell_website/constants.dart';
import 'package:trysell_website/models/blog_data.dart';
import 'package:trysell_website/responsive.dart';
import 'package:trysell_website/screens/home/components/footer.dart';
import 'package:trysell_website/widgets/hover_image.dart';
import 'package:trysell_website/widgets/size_config.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class BlogListView extends StatefulWidget {
  const BlogListView({
    Key? key,
  }) : super(key: key);

  @override
  State<BlogListView> createState() => _BlogListViewState();
}

class _BlogListViewState extends State<BlogListView> {
  var activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDesktop(context),
        // SizedBox(
        //   height: MySize.size80,
        // ),
        const Footer(),
      ],
    );
  }

// Big screens
  Widget _buildDesktop(BuildContext context) {
    return ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Column(
        children: [
          Column(
            children: [
              CarouselSlider.builder(

                  itemCount: blogPosts.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: buildImage(itemIndex)),
                  options: CarouselOptions(

                      onPageChanged: ((index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }),
                      pageSnapping: false,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      enlargeCenterPage: true,
                      height: 400,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2))),
              const SizedBox(
                height: 20,
              ),
              buildIndicator(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: List.generate(
                    blogPosts.length,
                    (index) => BlogPostCard(blog:blogPosts [index]),
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
                      SizedBox(height: kDefaultPadding),
                      RecentPosts(),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex, count: blogPosts.length);
}

// ignore: avoid_unnecessary_containers
Widget buildImage(int itemIndex) => Container(
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: <Widget>[
              HoverImage(image: blogPosts[itemIndex].image!, opacity: 0.2),
              Positioned(
                bottom: 20.0,
                right: 15.0,
                left: 20.0,
                child: Text(
                  blogPosts[itemIndex].title!,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
