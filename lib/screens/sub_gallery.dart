import 'dart:async';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/widgets/gallery.dart';

import '../provider/dark_theme_provider.dart';

class SubGalleryScreen extends StatefulWidget {
  final String folderName;
  final List<String> subFolderNames;
  const SubGalleryScreen(this.folderName, this.subFolderNames, int lnth, {Key? key})
      : super(key: key);

  @override
  _SubGalleryScreenState createState() =>
      _SubGalleryScreenState(folderName, subFolderNames);
}

class _SubGalleryScreenState extends State<SubGalleryScreen> {
  String folderName;
  List<String> subFolderNames;
  late FixedExtentScrollController controller;

  _SubGalleryScreenState(this.folderName, this.subFolderNames) ;

  StreamController counterController = StreamController();



  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color bgColor = themeState.getDarkTheme ? Colors.black : Colors.white;
    final List<Color> crdTxtCols = themeState.getDarkTheme
        ? [Colors.black, Colors.white]
        : [Colors.black, Colors.black];
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // final List<Color> crdCols = [Colors.lightGreenAccent, Colors.white70, Colors.orangeAccent, Colors.lightBlueAccent];

    InkWell buildImgsCrd(Color crdCol, List<Color> crdCols, String folderName,
        List<String> imgIndxLst, int lnth, int colIndex) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GridGalleryScreen(
                      folderName: folderName,
                    )),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 6.0,
            color: crdCol,
            shadowColor: color.withBlue(255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: SizedBox(
              height: screenHeight * 0.25,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      folderName,
                      style: TextStyle(
                          color: crdTxtCols[0],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.1,
                    padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.4,
                          height: screenWidth * 3,
                          child: FancyShimmerImage(
                              boxFit: BoxFit.cover,
                              imageUrl:
                                  'https://ik.imagekit.io/imgktmdp/monks/tr:q-1/monkimg__${imgIndxLst[0]}_.JPG'),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(left: 38.0, right: 18),
                          child: Icon(Icons.arrow_forward_ios, size: 50,),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    width: double.infinity,
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Text(
                        'और फोटो देखें',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    int lnth = subFolderNames.length;
    List<Color> crdColsList = [
      Colors.lightGreen,
      Colors.cyan,
      Colors.orange,
      Colors.deepPurple
    ];
    // List<Color> crdTxtColsList = themeState.getDarkTheme ? [Colors.black, Colors.black] : [Colors.black, Colors.white];
    return Scaffold(
        appBar: AppBar(
          title: Text(folderName),
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              lnth,
              (index) {
                return buildImgsCrd(
                    crdColsList[index],
                    [
                      Colors.white38,
                      Colors.black,
                      bgColor,
                    ],
                    subFolderNames[index],
                    ['1', '2', '000'],
                    lnth,
                    index);
              },
            ),
          ),
        ));
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.photo_size_select_actual_outlined),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: FancyShimmerImage(
              imageUrl: imageUrl,
              shimmerHighlightColor: Colors.orange,
              shimmerBaseColor: Colors.white,
              shimmerBackColor: Colors.green,
              width: screenWidth,
              boxFit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
