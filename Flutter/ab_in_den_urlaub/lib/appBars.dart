import 'package:flutter/material.dart';

class AppBarBrowser extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Text("Alle Ferienwohnungen"),
            onTap: () {
              Navigator.pushNamed(context, '/projects');
            },
          ),
          GestureDetector(
            child: Text("Mein Profil"),
            onTap: () {
              Navigator.pushNamed(context, '/aboutme');
            },
          ),
          GestureDetector(
            child: Row(children: [Text("1500"),Image.asset("/images/coins.png",height: 30,),]),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          /*
          Column(
            children: [
              GestureDetector(
                child: Stack(
                  children: [
                    Image(
                      height: AppBar().preferredSize.height / 3,
                      image: AssetImage("images/en.webp"),
                    ),
                    Text("DE", style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
              GestureDetector(
                child: Text("EN"),
              )
            ],
          ),
          */
        ],
      ),
    );
  }
}
