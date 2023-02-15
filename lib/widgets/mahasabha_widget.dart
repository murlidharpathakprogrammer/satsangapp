import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';

class MahasabhaWidget extends StatelessWidget {
  const MahasabhaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final Color txtcol =
        themeState.getDarkTheme ? Colors.white70 : Colors.black;
    final Color titleColor =
        themeState.getDarkTheme ? Colors.orange : Colors.black;
    final Color cardColor = themeState.getDarkTheme
        ? Colors.white10
        : const Color.fromRGBO(255, 180, 102, 1);
    Map<String, Color> allColors = {
      'crdCol1': const Color.fromRGBO(255, 180, 102, 1),
      'crdCol2': const Color.fromRGBO(100, 180, 255, 1),
      'crdTitle1': Colors.red,
      'crdTitle2': Colors.deepPurple,
      'crdCaption1': Colors.green,
      'crdCaption2': Colors.blueAccent
    };

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Card(
            // elevation: 5,
            shadowColor: Colors.red,
            color: Colors.amberAccent.shade200,
            // color: allColors['crdCol2'],
            child: SizedBox(
              width: double.infinity,
              height: h / 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text(
                      'अखिल राष्ट्रीय संतमत समिति',
                      style: TextStyle(
                          fontSize: 30, color: allColors['crdTitle2']),
                    ),
                    Text(
                      'बैजनाथपुर, सहरसा (बिहार)',
                      style: TextStyle(
                          fontSize: 20, color: allColors['crdTitle2']),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.amberAccent.shade100,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(children: [
                        Center(
                          child: SizedBox(
                            width: 180,
                            height: 180,
                            child: FancyShimmerImage(
                              imageUrl:
                                  "https://ik.imagekit.io/imgktmdp/monks/profile/download.png",
                              shimmerHighlightColor: Colors.amber,
                              errorWidget: const Icon(
                                Icons.person,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "महर्षि योगनन्द परमहंस जी महाराज\n(आचार्य)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: allColors['crdTitle2'], fontSize: 18)),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: FancyShimmerImage(
                                      imageUrl:
                                          "https://ik.imagekit.io/imgktmdp/monks/profile/adyakshJi-removebg-preview-removebg-preview.png",
                                      errorWidget: const Padding(
                                        padding: EdgeInsets.all(38.0),
                                        child: Icon(
                                          Icons.person,
                                          size: 50,
                                        ),
                                      ),
                                      boxDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text("श्री अरविंद कुमार\n(अध्यक्ष)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: allColors['crdTitle2'],
                                        fontSize: 15)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: FancyShimmerImage(
                                      imageUrl:
                                          "https://ik.imagekit.io/imgktmdp/monks/profile/mahamantri-removebg-preview__1_.png",
                                      errorWidget: const Padding(
                                        padding: EdgeInsets.all(38.0),
                                        child: Icon(
                                          Icons.person,
                                          size: 50,
                                        ),
                                      ),
                                      boxDecoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                    "स्वामी दिनेशानंद जी महाराज\n (सचिव, महामंत्री)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: allColors['crdTitle2'],
                                        fontSize: 15)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: FancyShimmerImage(
                                  imageUrl:
                                      "https://ik.imagekit.io/imgktmdp/monks/profile/koshadhyaksh.png",
                                  errorWidget: const Padding(
                                    padding: EdgeInsets.all(38.0),
                                    child: Icon(
                                      Icons.person,
                                      size: 50,
                                    ),
                                  ),
                                  boxDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("स्वामी रामचंद्र बाबा\n(कोषाध्यक्ष)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: allColors['crdTitle2'],
                                    fontSize: 15)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
    // ]
    //   ),
    // );
  }
}
