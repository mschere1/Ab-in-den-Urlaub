import 'package:flutter/material.dart';

class ApartmentCard extends StatefulWidget {
  String anlagenName = "";
  String bewertung = "";
  String text = "";
  String images = "";
  ApartmentCard(
      {Key? key,
      required this.anlagenName,
      required this.bewertung,
      required this.text})
      : super(key: key);

  @override
  _ApartmentCardState createState() => _ApartmentCardState();
}

class _ApartmentCardState extends State<ApartmentCard> {
  @override
  Widget build(BuildContext context) {
    var cardWitdh = 500.0;
    var cardHeight = 900.0;
    var imageWitdh = 450.0;
    //if (MediaQuery.of(context).size.width >
    //    MediaQuery.of(context).size.height) {
    //  imageWitdh = MediaQuery.of(context).size.width * 8 / 20;
    //}
    return Center(
      child: Container(
        width: cardWitdh,
        height: cardHeight,
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 8, spreadRadius: -13)
          ]),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Card(
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.anlagenName,
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          widget.bewertung,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    Container(
                      width: imageWitdh,
                      height: 270,
                      child: FittedBox(
                        child: Image(image: AssetImage("images/beach.jpg")),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        widget.text,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
