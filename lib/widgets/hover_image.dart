import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {
  final String? image;
  final double? opacity;

  const HoverImage({this.image, this.opacity});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;
  Animation? padding;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );
    _animation = Tween(begin: 1.0, end: 1.2).animate(CurvedAnimation(
        parent: _controller!, curve: Curves.ease, reverseCurve: Curves.easeIn));
    padding = Tween(begin: 0.0, end: -25.0).animate(CurvedAnimation(
        parent: _controller!, curve: Curves.ease, reverseCurve: Curves.easeIn));
    _controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          _controller!.forward();
        });
      },
      onExit: (value) {
        setState(() {
          _controller!.reverse();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.0, 20.0),
              spreadRadius: -10.0,
              blurRadius: 20.0,
            )
          ],
        ),
        child: Container(
          // clipBehavior: Clip.,
          transform: Matrix4(_animation!.value, 0, 0, 0, 0, _animation!.value,
              0, 0, 0, 0, 1, 0, padding!.value, padding!.value, 0, 1),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.darken),
            child: Image.asset(
              widget.image!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
