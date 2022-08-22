import 'package:flutter/material.dart'
    show
        AssetImage,
        BorderRadius,
        BoxFit,
        BuildContext,
        ClipRRect,
        Image,
        PageView,
        Radius,
        State,
        StatefulWidget,
        Widget;

// ignore: must_be_immutable
class HomePageView extends StatefulWidget {
  var controller;
  HomePageView({super.key, required this.controller});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var images = [];
  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [],
    );
  }

  Widget myPages(String images) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Image(
        image: AssetImage(images),
        fit: BoxFit.fill,
      ),
    );
  }
}
