import 'package:flutter/material.dart'
    show BuildContext, Center, Scaffold, StatelessWidget, Text, Widget;

/* class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
  */

import 'dart:async';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Timer Periodic Demo', home: RopSayac());
  }
}

class RopSayac extends StatefulWidget {
  _RopSayacState createState() => _RopSayacState();
}

class _RopSayacState extends State<RopSayac> {
  late String _now;
  late Timer _everySecond;

  @override
  void initState() {
    super.initState();

    // sets first value
    _now = DateTime.now().second.toString();

    // defines a timer
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        _now = DateTime.now().second.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: new Text(_now),
      ),
    );

    
  }
}
