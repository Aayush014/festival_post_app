import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/global.dart';
import '../Home Screen/home_screen.dart';
import 'components.dart';

class PosterScreen extends StatefulWidget {
  const PosterScreen({super.key});

  @override
  State<PosterScreen> createState() => _PosterScreenState();
}

class _PosterScreenState extends State<PosterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Post",
          style: TextStyle(
              fontSize: 30,
              color: Color(0xff2F6790),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        //toolbarHeight: 50,
        actions: [
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('share'),
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                  color: const Color(0xff2F6790),
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Next',
                style: TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            CupertinoIcons.back,
            color: Color(0xff2F6790),
            size: 50,
          ),
        ),
        shape: const Border(
            bottom: BorderSide(color: Color(0xff072C7F), width: 2.5)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              buildPosterBox(),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Expanded(
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            postIndex = index;
                          });
                        },
                          child: postBox(fest[0]['img'][imgIndex][index]));
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget postBox(String i1) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 0.1)
        ],
        image: DecorationImage(image: AssetImage(i1), fit: BoxFit.fill),
      ),
    ),
  );
}
int postIndex =0 ;