import 'dart:async';
import 'dart:io';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Bhajans extends StatefulWidget {
  const Bhajans({Key? key}) : super(key: key);

  @override
  _BhajansState createState() => _BhajansState();
}

class _BhajansState extends State<Bhajans> {
  // int counter = 0;
  StreamController counterController = StreamController();
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color cardColor =
        themeState.getDarkTheme ? Colors.black87 : const Color.fromRGBO(
            255, 245, 200, 0.9);
    final double screenWidth = MediaQuery.of(context).size.width;
    FirebaseFirestore db = FirebaseFirestore.instance;
    void getStartedReadData() async {
      // [START get_started_read_data]
      await db.collection("users").get().then((event) {
        for (var doc in event.docs) {
          stdout.write("${doc.id} => ${doc.data()}");
        }
      });
    }

    // void countDocuments() async {
    //   QuerySnapshot _myDoc = await db.collection('Books').get();
    //   List<DocumentSnapshot> _myDocCount = _myDoc.docs;
    //   print(_myDocCount.length);  // Count of Documents in Collection
    // }

    getStartedReadData();
    // countDocuments();

    // print("Count ${queryCount}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("भजन"),
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Books').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 3, left: 10, right: 10),
                child: SizedBox(
                  // width:  300,
                  height: 250,
                  child: InkWell(
                    focusColor: Colors.red,
                    splashColor: Colors.deepPurple,
                    onTap: (){
                      stdout.write("Firebase Book Card tapped");
                      stdout.write("Title: " + document['bookTitle']);
                      // MyAudioApp();
                    },
                    child: Card(
                      color: cardColor,
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Row(
                            children: [
                              SizedBox(
                                // height: 270,
                                  width: screenWidth/2.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: FancyShimmerImage(
                                      // height: 300,
                                        imageUrl: "${document['imageUrl']}",
                                      boxFit: BoxFit.contain,
                                    ),
                                  )
                              ),
                              SizedBox(
                                width: screenWidth/25,
                                // height: 300,
                              ),
                              Center(
                                child: SizedBox(
                                  height: 150,
                                  width: screenWidth/2.4,
                                  child: TextWidget(
                                    text: "${document['bookTitle']}",
                                    color: Colors.orange.shade900,
                                    textSize: 23,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // child: Text("Title: " + document['bookTitle']),
                  ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
