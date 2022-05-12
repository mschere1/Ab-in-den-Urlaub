import 'package:flutter/material.dart';
import 'profile.dart';
import 'allApartments.dart';
import 'apartment.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => AllApartments(),
              }
    );
  }
}