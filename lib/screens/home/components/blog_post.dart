import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trysell_website/models/blog_data.dart';
import 'package:trysell_website/responsive.dart';
import 'package:trysell_website/widgets/hover_image.dart';

import '../../../constants.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key? key,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [

Row(children: [
  Expanded(
    child: AspectRatio(
      aspectRatio: 1.78,
      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: HoverImage(image: blog.image!,opacity: 0.0,)),
    ),
  ),
  Expanded(
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
                "Design".toUpperCase(),
                style: const TextStyle(
                  color: kDarkBlackColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Text(
                blog.date!,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(
              blog.title!,
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
          Text(
            blog.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  padding:
                  const EdgeInsets.only(bottom: kDefaultPadding / 4),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kPrimaryColor, width: 3),
                    ),
                  ),
                  child: const Text(
                    "Read More",
                    style: TextStyle(color: kDarkBlackColor),
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                icon: SvgPicture.asset(
                    "assets/icons/feather_thumbs-up.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                    "assets/icons/feather_message-square.svg"),
                onPressed: () {},
              ),
              IconButton(
                icon:
                SvgPicture.asset("assets/icons/feather_share-2.svg"),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  ),
],)
        ],
      ),
    );
  }
}

