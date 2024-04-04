import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text(
          "Buy Premium",
          style: TextStyle(
              fontSize: 30,
              color: Color(0xff2F6790),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 75,
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
      body: Center(child: SizedBox(
        height: 500,
        width: 600,
        child: Image.asset('Assets/Img/meme.png',fit: BoxFit.none,),
      ),),
    );
  }
}
