import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}
//   const NewsWidget({Key? key}) : super(key: key);
//
//   @override
//   State<NewsWidget> createState() => _NewsWidgetState();
// }

class _NewsState extends State<NewsWidget> {
  // int counter = 0;
  List _newsDetails =[];

  fetchNewsDetails() async{
    var _firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await _firestoreInstance.collection('events').get();
    setState(() {
      for(int i=0; i<qn.docs.length; i++){
        _newsDetails.add(
            {
              "date":qn.docs[i]["date"],
              "venue":qn.docs[i]["venue"],
            }
          // qn.docs[i]["bookUrl"],
        );
        print(qn.docs[i]["venue"]);
      }
    });
    return qn.docs;
  }

  @override
  void initState(){
    fetchNewsDetails();

    super.initState();
  }

  StreamController counterController = StreamController();
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    // double _screenWidth = MediaQuery.of(context).size.width;
    // final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    final Color txtColor =
    themeState.getDarkTheme ? const Color.fromRGBO(255, 225, 0, 1.0): const Color.fromRGBO(213, 0, 14, 1);
    final Color captionColor =
    themeState.getDarkTheme ? Colors.white : const Color.fromRGBO(24, 6, 164, 1);
    final Color cardColor =
    themeState.getDarkTheme ? const Color.fromRGBO(99, 70, 3, 1) : const Color.fromRGBO(
        255, 162, 67, 0.4);
    // final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore db = FirebaseFirestore.instance;

    void getStarted_readData() async {
      // [START get_started_read_data]
      await db.collection("events").get().then((event) {
        for (var doc in event.docs) {
          print("${doc.id} => ${doc.data()}");
        }
      });
    }

    getStarted_readData();
    // countDocuments();

    // print("Count ${queryCount}");
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("events").orderBy("date").snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }


        return ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          // reverse: true,
          shrinkWrap: true,

          children: snapshot.data!.docs.map((document) {
            if (_scrollController.hasClients) {
              _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
              _scrollController.animateTo(_scrollController.position.minScrollExtent,duration: const Duration(seconds: 3), curve: Curves.easeInOutBack);
            }
            return SizedBox(
              child: InkWell(
                focusColor: Colors.red,
                splashColor: Colors.yellow,
                // hoverColor: Colors.red,
                onTap: (){
                  _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(seconds: 2), curve: Curves.easeInOut);
                },
                child: Card(
                  color: cardColor,
                  // surfaceTintColor: Colors.blue,
                  shadowColor: const Color.fromRGBO(255, 183, 0, 1.0),
                  elevation: 4,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0)), side: BorderSide(color: Colors.white)),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            IconlyLight.location
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              // height: 300,
                              "${document['venue']}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: txtColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          children: [
                            const Icon(
                                Icons.calendar_month
                            ),
                            Text(
                              // height: 300,
                                "  ${DateFormat('d MMMM, y').format(document['date'].toDate())}",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: captionColor,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // child: Text("Title: " + document['bookTitle']),
            );
          }).toList(),
        );
      },
    );
  }
}