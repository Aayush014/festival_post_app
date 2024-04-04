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
        allowImplicitScrolling: true,
        scrollBehavior: const CupertinoScrollBehavior(),
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
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
      color: Colors.grey,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: SizedBox(
              height: 75,
              width: 75,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    i1,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          const Spacer(),
          Text(
            t1,
            style: const TextStyle(
              fontSize: 30,
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
          color: Colors.grey, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: SizedBox(
              height: 150,
              width: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    i1,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Text(t1),
        ],
      ),
    ),
  );
}
