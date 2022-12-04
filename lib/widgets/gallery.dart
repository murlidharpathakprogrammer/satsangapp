
import 'dart:core';
import 'dart:io';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../provider/dark_theme_provider.dart';
// import '../services/utils.dart';

class GalleryScreen extends StatefulWidget{
  const GalleryScreen({Key? key}) : super(key: key);


  @override
  State<GalleryScreen> createState() => _GalleryScreenState();

}

class _GalleryScreenState extends State<GalleryScreen> {

  String changeTitle = "Grid View";
  bool checkView = false;

  File? imageFile;
  String? imageUrl;
  String? myImage;
  String? myName;

  @override
  Widget build(BuildContext context) {
    // final themeState = Provider.of<DarkThemeProvider>(context);
    // final Utils utils = Utils(context);
    double screenWidth = MediaQuery.of(context).size.width;
    // final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    // final Color txtcol = themeState.getDarkTheme ? Colors.red : Colors.deepOrange;
    // final Color captionColor = themeState.getDarkTheme ? Colors.white : Colors.black;
    // final Color cardColor = themeState.getDarkTheme ? const Color.fromRGBO(53, 93, 113, 0.8) : Color.fromRGBO(249, 211, 124, 0.3);
    // Size size = utils.getScreenSize;

    return Scaffold(
        appBar: AppBar(title: const Text("गैलरी"), backgroundColor: Colors.orange,),
        body: FancyShimmerImage(imageUrl: 'https://logos-world.net/wp-content/uploads/2021/02/Google-Cloud-Symbol.png', shimmerBaseColor: Colors.orange, shimmerHighlightColor: Colors.blue, width: screenWidth,)
    );
  }

}