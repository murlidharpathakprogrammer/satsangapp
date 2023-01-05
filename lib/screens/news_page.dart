import 'dart:io';
import 'dart:async';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
// import 'package:satsangapp/screens/epub_reader.dart';
import 'package:satsangapp/widgets/error_widget.dart';
// import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  late FixedExtentScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  StreamController counterController = StreamController();
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color captionColor =
        themeState.getDarkTheme ? Colors.white : Colors.black;
    // final Color cardColor = themeState.getDarkTheme
    //     ? const Color.fromRGBO(255, 87, 0, 0.4)
    //     : const Color.fromRGBO(255, 245, 200, 0.9);
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("आगामी प्रोग्राम"),
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('events')
            .orderBy("date")
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: Error_Widget(),
            );
          }
          return ListWheelScrollView(
            controller: controller,
            physics: const FixedExtentScrollPhysics(),
            onSelectedItemChanged: (index) =>
                stdout.write("Selected Item: ${index + 1}"),
            perspective: 0.0020,
            itemExtent: 450,
            overAndUnderCenterOpacity: 0.2,
            children: snapshot.data!.docs.map((document) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, bottom: 3, left: 20, right: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: captionColor)),
                  // color: cardColor,
                  elevation: 1,
                  child: Column(
                    children: [
                      FractionallySizedBox(
                        widthFactor: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.withOpacity(0.4),
                                  Colors.blueAccent,
                                  Colors.purple
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10))),
                          // color: Colors.redAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              DateFormat('d MMMM, y')
                                  .format(document['date'].toDate()),
                              style: const TextStyle(
                                fontSize: 20,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      offset: Offset(1, 1),
                                      blurRadius: 10)
                                ],
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FancyShimmerImage(
                          height: screenWidth * 0.5,
                          width: double.infinity,
                          imageUrl: "${document['imageUrl']}",
                          shimmerDuration: const Duration(milliseconds: 1200),
                          shimmerBaseColor: Colors.orange,
                          shimmerHighlightColor: Colors.yellowAccent,
                          shimmerBackColor: Colors.white,
                          errorWidget: Column(
                            children: [
                              SizedBox(
                                height: 150,
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/offers/logoCenter.png",
                                    cacheHeight: 480,
                                  ),
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: const [
                                    Text(
                                      "! असली फोटो लोड नहीं हो सका",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          boxFit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orangeAccent.withOpacity(0.4),
                                  Colors.yellow.withOpacity(0.7),
                                  Colors.red
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    // color: Colors.black,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            const Color.fromRGBO(
                                                29, 38, 0, 0.9),
                                            Colors.yellow.withOpacity(0.8),
                                            const Color.fromRGBO(
                                                29, 38, 0, 0.9),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 18.0,
                                          right: 18.0,
                                          top: 3.0,
                                          bottom: 3.0),
                                      child: Text(
                                        "${document['newsTitle']}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          // fontWeight: FontWeight.bold,
                                          // backgroundColor: Colors.white,
                                          fontSize: 20,
                                          shadows: [
                                            Shadow(
                                                color: Colors.black,
                                                offset: Offset(1, 1),
                                                blurRadius: 5),
                                            Shadow(
                                                color: Color.fromRGBO(
                                                    150, 3, 171, 1),
                                                offset: Offset(-0.5, -0.5),
                                                blurRadius: 18)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${document['description']}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
                                  ),
                                  Text(
                                    "${document['venue']}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}