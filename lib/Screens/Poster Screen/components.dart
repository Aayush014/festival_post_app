import 'package:festival_post_app/Screens/Poster%20Screen/poster_screen.dart';
import 'package:flutter/material.dart';

import '../../Utils/global.dart';
import '../Home Screen/home_screen.dart';

Widget buildPosterBox() {
  return Container(
    height: 370,
    width: 370,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
            color: Colors.grey, spreadRadius: 0.1, blurRadius: 10)
      ],
      image: DecorationImage(
          image: AssetImage(
            fest[0]['img'][imgIndex][postIndex],
          ),fit: BoxFit.fill
      ),
    ),
  );
}