import 'dart:io';
import 'dart:async';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/epub_reader.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}


class _NewsState extends State<News> {
  // int counter = 0;
  List _newsDetails =[];
  late FixedExtentScrollController controller;

  @override
  void initState(){
    fetchNewsDetails();
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  fetchNewsDetails() async{
    var firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestoreInstance.collection('events').get();
    setState(() {
      for(int i=0; i<qn.docs.length; i++){
        _newsDetails.add(
            {
              "speaker":qn.docs[i]["speaker"],
              "newsTitle":qn.docs[i]["newsTitle"],
              "date":qn.docs[i]["date"],
              "venue":qn.docs[i]["venue"],
              "imageUrl":qn.docs[i]["imageUrl"],
            }
          // qn.docs[i]["bookUrl"],
        );
        stdout.write(qn.docs[i]["speaker"]);
      }
    });
    return qn.docs;
  }


  StreamController counterController = StreamController();
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color captionColor =
    themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color cardColor =
    themeState.getDarkTheme ? const Color.fromRGBO(53, 93, 113, 0.8) : const Color.fromRGBO(
        255, 245, 200, 0.9);
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore db = FirebaseFirestore.instance;

    void getStartedReadData() async {
      // [START get_started_read_data]
      await db.collection("users").get().then((event) {
        for (var doc in event.docs) {
          stdout.write("${doc.id} => ${doc.data()}");
        }
      });
    }

    getStartedReadData();
    // countDocuments();

    // print("Count ${queryCount}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("आगामी प्रोग्राम"),
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('events').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListWheelScrollView(
            physics: const BouncingScrollPhysics(),
            perspective: 0.0031,
            itemExtent: 400,
            offAxisFraction: -0.3,
            squeeze: 1.2,
            overAndUnderCenterOpacity: 0.3,
            children: snapshot.data!.docs.map((document) {
              return Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 3, left: 10, right: 10),
                child: Card(
                  color: cardColor,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                      children: [
                        SizedBox(
                            width: screenWidth*0.3,
                            child: FancyShimmerImage(
                              // height: 300,
                              imageUrl: "${document['imageUrl']}",
                              shimmerDuration: const Duration(seconds: 200),
                              shimmerBaseColor: Colors.orange,
                              shimmerHighlightColor: Colors.yellowAccent,
                              shimmerBackColor: Colors.white,
                              boxFit: BoxFit.contain,
                            )
                        ),
                        SizedBox(
                          width: screenWidth*0.05,
                          // height: 300,
                        ),
                        SizedBox(
                          height: 150,
                          width: screenWidth*0.5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 3.0),
                            child: TextWidget(
                              text: "${document['newsTitle']}",
                              color: captionColor,
                              textSize: 23,


                            ),
                          ),
                        ),

                      ],
                    ),
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
