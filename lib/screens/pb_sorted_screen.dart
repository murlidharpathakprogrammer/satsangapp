import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:satsangapp/screens/yt_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/dark_theme_provider.dart';

class PbSorted extends StatelessWidget {
  final String title;
  final String author;
  final String type;

  PbSorted(
      {Key? key, required this.title, required this.author, required this.type})
      : super(key: key);

  final List _prBhDetails = [];
  late FixedExtentScrollController controller;

  void initState() {
    fetchPrBhDetails();
    initState();
    controller = FixedExtentScrollController();
  }

  void dispose() {
    controller.dispose();
    dispose();
  }

  fetchPrBhDetails() async {
    var firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn =
        await firestoreInstance.collection('bhajanPravachan').get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _prBhDetails.add({
          "author": qn.docs[i]["author"],
          "type": qn.docs[i]["type"],
          "vidSrc": qn.docs[i]["vidSrc"],
        });
      }
    });
    return qn.docs;
  }

  StreamController counterController = StreamController();
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color cardColor = themeState.getDarkTheme
        ? const Color.fromRGBO(79, 118, 255, 0.8)
        : const Color.fromRGBO(255, 255, 200, 0.9);
    final Color playCol = themeState.getDarkTheme
        ? const Color.fromRGBO(255, 242, 27, 1.0)
        : const Color.fromRGBO(1, 76, 211, 0.9019607843137255);
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection("bhajanPravachan")
              .where("type", isEqualTo: type)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
                physics: const BouncingScrollPhysics(),
                children: snapshot.data!.docs.map((document) {
                  return SizedBox(
                    width: screenWidth,
                    child: InkWell(
                      onTap: () {
                        String vidSrc = "${document['vidSrc']}";
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyYouTubePlayer(v: vidSrc)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Card(
                          color: cardColor,
                          elevation: 3,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SizedBox(
                                      width: 170,
                                      height: 100,
                                      child: FancyShimmerImage(
                                        imageUrl:
                                            'https://i.ytimg.com/vi/${document['vidSrc']}/mqdefault.jpg',
                                        boxFit: BoxFit.cover,
                                        shimmerDuration:
                                            const Duration(milliseconds: 500),
                                        shimmerBaseColor: Colors.amberAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.5,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 8, top: 8),
                                          child: Text(
                                            "${document['title']}",
                                            maxLines: 3,
                                            textAlign: TextAlign.justify,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.play_circle_outlined,
                                          color: playCol,
                                          size: 30,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          // child: ListTile(
                          //   leading: FancyShimmerImage(
                          //       width: 150,
                          //       height: 100,
                          //       imageUrl:
                          //       'https://i.ytimg.com/vi/${document['vidSrc']}/sddefault.jpg'),
                          //   title: Text(
                          //     "${document['title']}",
                          //     maxLines: 2,
                          //     style:
                          //     const TextStyle(fontWeight: FontWeight.bold),
                          //   ),
                          //   trailing: Icon(
                          //     Icons.play_circle_fill_outlined,
                          //     color: captionColor,
                          //     size: 40,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  );
                }).toList());
          }),
    );
  }

  void setState(Null Function() param0) {}
}
