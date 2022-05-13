import 'package:ab_in_den_urlaub/apartmentCard.dart';
import 'package:flutter/material.dart';

import 'appBars.dart';

class TestAPI extends StatefulWidget {
  TestAPI({Key? key}) : super(key: key);
  @override
  _TestAPIState createState() => _TestAPIState();
}

class _TestAPIState extends State<TestAPI> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarBrowser(),
        ),
        body: ElevatedButton(
          child: Text("Test"),
          onPressed: () {},
        ),
      ),
    );
  }
}
