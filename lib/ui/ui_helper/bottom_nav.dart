import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BottomAppBar,
        BuildContext,
        CircularNotchedRectangle,
        Curves,
        Icon,
        IconButton,
        Icons,
        MainAxisAlignment,
        MediaQuery,
        PageController,
        Row,
        SizedBox,
        StatelessWidget,
        Theme,
        Widget;

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  BottomNav({super.key, required this.controller});
  PageController controller;
  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5,
      color: primaryColor,
      child: SizedBox(
        height: 63,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.animateToPage(0,
                            duration: Duration(microseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.home),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.animateToPage(1,
                            duration: Duration(microseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.bar_chart),
                    ),
                  ]),
              height: 50,
              width: MediaQuery.of(context).size.width / 2 - 20,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 2,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.animateToPage(2,
                            duration: Duration(microseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.border_color),
                    ),
                    /* Text("Home"), */
                    IconButton(
                      onPressed: () {
                        controller.animateToPage(3,
                            duration: Duration(microseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      icon: Icon(Icons.wallet),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
