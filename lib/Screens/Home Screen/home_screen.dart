import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/global.dart';
import 'components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('Assets/Img/logo.jpeg'),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            const Text(
              'iPost',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2F6790)),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                showModalBottomSheet(context: context,
                  barrierColor: Colors.black54,
                  enableDrag: true,
                  showDragHandle: true,
                  builder: (context) {
                    return Center(child: Container(height: 800,));
                  },);
              });
            },
            child: const Icon(
              Icons.support_agent_rounded,
              size: 40,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                (click) ? click = false : click = true;
              });
            },
            icon: (click)
                ? const Icon(
              Icons.format_list_bulleted,
              color: Colors.black,
              size: 35,
            )
                : const Icon(
              Icons.apps,
              color: Colors.black,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        toolbarHeight: 75,
        leading: const Icon(
          CupertinoIcons.person_crop_circle,
          size: 50,
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Color(0xff072C7F),
            width: 2.5,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              saleBox(),
              posterBox(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget posterBox(BuildContext context) {
    return Expanded(
      child: (click)
          ? GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 7 / 8,
          crossAxisCount: 2,
        ),
        itemCount: 9,
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () {
                setState(() {
                  imgIndex = index;
                  Navigator.of(context).pushNamed('poster');
                });
              },
              child: gridViewBox(
                  fest[0]['img'][index][0], fest[0]['name'][index]),
            ),
      )
          : ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () {
                setState(() {
                  imgIndex = index;
                  Navigator.of(context).pushNamed('poster');
                });
              },
              child: listViewBox(
                  fest[0]['img'][index][0], fest[0]['name'][index]),
            ),
      ),
    );
  }
}

bool click = false;
int imgIndex = 0;
