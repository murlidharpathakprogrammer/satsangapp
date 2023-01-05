import 'dart:core';
import 'dart:io';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(title: const Text("गैलरी"), backgroundColor: Colors.orange,),
        body: FancyShimmerImage(imageUrl: 'https://logos-world.net/wp-content/uploads/2021/02/Google-Cloud-Symbol.png', shimmerBaseColor: Colors.orange, shimmerHighlightColor: Colors.blue, width: screenWidth,)
    );
  }
}