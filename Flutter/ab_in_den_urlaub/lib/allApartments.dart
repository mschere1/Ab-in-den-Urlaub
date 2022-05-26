import 'package:ab_in_den_urlaub/apartmentCard.dart';
import 'package:flutter/material.dart';

import 'appBars.dart';

class AllApartments extends StatefulWidget {
  AllApartments({Key? key}) : super(key: key);
  @override
  _AllApartmentsState createState() => _AllApartmentsState();
}

class _AllApartmentsState extends State<AllApartments> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarBrowser(),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: const FittedBox(
                          child: const Image(
                              image: AssetImage("images/hallstatt.jpg")),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.7,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: const Text(
                            "Ab in den Urlaub...",
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10,
                    ),
                    const Text("Italien", style: TextStyle(fontSize: 50)),
                    Container(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),ApartmentCard(),
                      ]),
                    ),
                    Container(
                      height: 10,
                    ),
                    const Text("Spanien", style: TextStyle(fontSize: 50)),
                    Container(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [// listview builder muss hierher
                        //ApartmentCard(anlagenName:json["anlagenName"]),
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),ApartmentCard(),
                      ]),
                    ),
                    Container(
                      height: 10,
                    ),
                    const Text("Griechenland",
                        style: const TextStyle(fontSize: 50)),
                    Container(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),
                        //ApartmentCard(),ApartmentCard(),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
