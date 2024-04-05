import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget saleBox() {
  return Container(
    height: 200,
    width: 380,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: PageView(
        allowImplicitScrolling: false,
        scrollBehavior: const CupertinoScrollBehavior(),
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('Assets/Img/s3.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('Assets/Img/s1.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('Assets/Img/s2.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    ),
  );
}

Widget listViewBox(String i1, String t1) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            const BoxShadow(
                color: Colors.black26, blurRadius: 10, spreadRadius: 1)
          ]),
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage(i1), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black26, blurRadius: 10, spreadRadius: 1)
                  ]),
              height: 75,
              width: 75,
            ),
          ),
          const Spacer(),
          Text(
            t1,
            style: const TextStyle(
              fontSize: 30,
              color: Color(0xff2F6790),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    ),
  );
}

Widget gridViewBox(String i1, String t1) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      alignment: Alignment.center,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            const BoxShadow(
                color: Colors.black26, blurRadius: 10, spreadRadius: 1)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage(i1), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black26, blurRadius: 10, spreadRadius: 1)
                  ]),
            ),
          ),
          Spacer(),
          Text(
            t1,
            style: TextStyle(
              color: Color(0xff2F6790),
              fontSize: 20,fontWeight: FontWeight.bold
            ),
          ),
          Spacer(),
        ],
      ),
    ),
  );
}
