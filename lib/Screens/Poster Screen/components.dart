import 'package:festival_post_app/Screens/Poster%20Screen/poster_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/global.dart';
import '../Home Screen/home_screen.dart';

Widget buildPosterBox(BuildContext context) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        height: 370,
        width: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, spreadRadius: 0.1, blurRadius: 10)
          ],
          image: DecorationImage(
              image: AssetImage(
                fest[0]['img'][imgIndex][postIndex],
              ),
              fit: BoxFit.fill),
        ),
      ),
      Column(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 370,
                height: 20,
                decoration: BoxDecoration(
                    color: bgColour[bgColor],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(CupertinoIcons.phone_circle,color: txtColour[txtColor],),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "9879004689",
                          style: TextStyle(color: txtColour[txtColor]),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.mail,color: txtColour[txtColor],),
                        SizedBox(
                          width: 10,
                        ),
                        Text("aayushpatel1411@gmail.com",style: TextStyle(color: txtColour[txtColor]),),
                      ],
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 0.5,
          )
        ],
      )
    ],
  );
}
