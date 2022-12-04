import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';
import '../services/utils.dart';

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
    var firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestoreInstance.collection('events').get();
    setState(() {
      for(int i=0; i<qn.docs.length; i++){
        _newsDetails.add(
            {
              "date":qn.docs[i]["date"],
              "venue":qn.docs[i]["venue"],
            }
          // qn.docs[i]["bookUrl"],
        );
        stdout.write(qn.docs[i]["venue"]);
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
    final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    final Color newsTxtShadow =
    themeState.getDarkTheme ? const Color.fromRGBO(0, 0, 0, 1.0): const Color.fromRGBO(255, 255, 255, 1);
    final Color captionColor =
    themeState.getDarkTheme ? Colors.white : const Color.fromRGBO(0, 6, 164, 1);
    // final Color cardColor =
    // themeState.getDarkTheme ? const Color.fromRGBO(99, 70, 3, 1) : const Color.fromRGBO(
    //     255, 162, 67, 0.4);
    final Utils utils = Utils(context);
    Size size = utils.getScreenSize;
    // final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore db = FirebaseFirestore.instance;

    void getStartedReadData() async {
      // [START get_started_read_data]
      await db.collection("events").get().then((event) {
        for (var doc in event.docs) {
          stdout.write("${doc.id} => ${doc.data()}");
        }
      });
    }

    getStartedReadData();
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


        return Card(
          child: ListView(
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
                height: 0.1*size.height,
                child: InkWell(
                  focusColor: Colors.red,
                  splashColor: Colors.yellow,
                  // hoverColor: Colors.red,
                  onTap: (){
                    _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(seconds: 2), curve: Curves.easeInOut);
                  },
                  child: Card(
                    elevation: 0,
                    // elevation: 2,
                    shadowColor: Colors.white,
                    child: Ink(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          opacity: 0.4,
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/pictures/orange-multi.jpg'), // Background image
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                IconlyLight.location
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "${document['venue']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: captionColor,
                                      shadows: [
                                        Shadow(
                                            blurRadius: 30,
                                            color: newsTxtShadow,
                                            offset: const Offset(1, 1))
                                      ],
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
                                    "  ${DateFormat('d MMMM, y').format(document['date'].toDate())}",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: captionColor,
                                    shadows: [
                                      Shadow(
                                          blurRadius: 30,
                                          color: newsTxtShadow,
                                          offset: const Offset(1, 1))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // child: Text("Title: " + document['bookTitle']),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}