import 'package:festival_post_app/Screens/Share%20Screen/premium_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
import '../../Utils/global.dart';
import '../Home Screen/home_screen.dart';
import '../Poster Screen/poster_screen.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Preview",
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Container(
                height: 380,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26, spreadRadius: 0.1, blurRadius: 10)
                  ],
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(
                      fest[0]['img'][imgIndex][postIndex],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {

                            },
                            child: shareBox(
                              const Icon(
                                Icons.share_rounded,
                                size: 30,
                              ),
                              'Share',
                            ),
                          ),
                          shareBox(
                            const Icon(
                              Icons.file_download_outlined,
                              size: 30,
                            ),
                            'Download',
                          ),
                        ],
                      ),
                      bigBox(
                          const Icon(
                            CupertinoIcons.home,
                          ),
                          const Text(
                            'Go to Home Screen',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          )),
                      GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const PremiumScreen(),
                              )),
                          child: bigBox(
                              const Icon(CupertinoIcons.rosette),
                              const Text(
                                'Remove Watermark, Buy Premium',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ))),
                    ],
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

Padding bigBox(Icon i1, Text t1) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      height: 65,
      width: 380,
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff2F6790), width: 2.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [i1, const Text("     "), t1],
      ),
    ),
  );
}

Widget shareBox(Icon i1, String s1) {
  return Container(
    alignment: Alignment.center,
    height: 65,
    width: 180,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xff2F6790), width: 2.5)),
    child: Row(
      children: [
        const Spacer(),
        i1,
        const Text('     '),
        Text(
          s1,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Spacer()
      ],
    ),
  );
}
GlobalKey imgKey = GlobalKey();