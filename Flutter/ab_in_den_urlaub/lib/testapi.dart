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
  String url = 'https://localhost:7077/api/Nutzer';
  var jsons = [];
  var response;
  void fetchUser() async {
    try {
      response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;
      setState(() {
        jsons = jsonData;
      });
    } catch (err) {
      print(err.toString());
    }
  }

  void postUser() async {
    try {
      response = await http.post(Uri.parse(url), headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      }, body: """ {
    "username": "niggotestasndddassdbdsdsjniasberino",
    "nachname": "dsauhdiuasajfabahdsdbsddsfhidushaiud",
    "vorname": "asdoiuhasiudsajdsnhaidsdsudhiuhciuewhbc",
    "password": "siauvbiushvrauisddvbdsiubvdiuvb",
    "email": "ascuiadshvieruvhsiassdjbdsvhids349uhv9835hv9r",
    "tokenstand": 0,
    "vermieter": false,
    "admin": true
  }""");

      /**
           * (<String, String>{
            'username': "BastianDerlppen!1",
            "nachname": "dhfbdsuhzbu",
            "vorname": "asdhiabsdhua",
            "password": "asdhasbdhuasbdu",
            "email": "emailtest",
            "tokenstand": 0.toString(),
            "vermieter": false.toString(),
            "bewertungs": "[]",
            "ferienwohnungs": "[]",
            "gebots": "[]",
            "kreditkartendatens": "[]",
            "rechnungshistorieeintrags": "[]"
          })
           */
      //final jsonData = jsonDecode(response.body) as List;
      //setState(() {
      //  jsons = jsonData;
      //});
      print(response.body);
    } catch (err) {
      print(err.toString());
    }
  }

  void httpget() async {
    var response;
    try {
      response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: Text("test"), //response.body),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } catch (err) {}

    //print('Response status: ${response.statusCode}');
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
        body: Column(
          children: [
            ElevatedButton(
              child: Text("TestGet"),
              onPressed: fetchUser,
            ),
            ElevatedButton(
              child: Text("TestPost"),
              onPressed: postUser,
            ),
            TextField(),
            Container(
              height: 500,
              child: ListView.builder(
                // ich brauch die anzahl (json length), die eig items(anstatt text mit userid, dynamisch neue erstellen)
                itemCount: jsons.length,
                wohnungenJson = await http.get(Uri.parse('https://localhost:7077/api/Ferienwohnung'));
                final jsonWohnung = jsonDecode(wohnungenJson.body) as List;
                var anzahlWohnungen = jsonWohnung.length;
                itemBuilder: (context, i) {
                  final json = jsons[i];
                  return Text(
                    //parameter für appartment karte übergeben
                    //ich hätte eine for schleife gemacht, weis nicht wie man auf die verschiedenen stellen in der json zugreifen soll
                    //ich versteh nicht wie ich an die json komm von den appartments      
                    //ich glaub durch get aufruf aber weis nich genau wie                     glaub habs geschafft aber is glaub leer deshabl bringts nichts
                    

                    ApartmentCard(anlagenName:json["anlagenName"],bewertung:json["bewertung"], text:json["text"]),
                      "userid = ${json["userId"]}, username = ${json["username"]}, nachname = ${json["nachname"]}, vorname = ${json["vorname"]},  email = ${json["email"]}, tokens = ${json["tokenstand"]},");
                      //wusst nich was ich mit dem user machen soll?
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
