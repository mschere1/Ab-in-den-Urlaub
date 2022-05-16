import 'dart:collection';

import 'package:ab_in_den_urlaub/apartmentCard.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'appBars.dart';

class TestAPI extends StatefulWidget {
  TestAPI({Key? key}) : super(key: key);
  @override
  _TestAPIState createState() => _TestAPIState();
}

class _TestAPIState extends State<TestAPI> {
  httpget() async {
    String url = 'http://example.com/api/items/1';
    Map<String, String> headers = HashMap();
    headers.putIfAbsent('Accept', () => 'application/json');

    http.Response response = await http.get(
      url,
      headers: headers,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

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
          onPressed: httpget(),
        ),
      ),
    );
  }
}
