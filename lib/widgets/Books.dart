import 'dart:io';
import 'dart:async';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/epub_reader.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  _BooksState createState() => _BooksState();
}


class _BooksState extends State<Books> {
  // int counter = 0;
  List _booksDetails =[];
  late FixedExtentScrollController controller;

  @override
  void initState(){
    fetchBookDetails();
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  fetchBookDetails() async{
    var firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestoreInstance.collection('Books').get();
    setState(() {
      for(int i=0; i<qn.docs.length; i++){
        _booksDetails.add(
          {
            "author":qn.docs[i]["author"],
            "bookTitle":qn.docs[i]["bookTitle"],
            "bookUrl":qn.docs[i]["bookUrl"],
            "imageUrl":qn.docs[i]["imageUrl"],
            "tag":qn.docs[i]["tag"],
          }
          // qn.docs[i]["bookUrl"],
        );
        stdout.write(qn.docs[i]["bookUrl"]);
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
        title: const Text("पुस्तक"),
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
                      // String bookAsset = "${document['author']}";
                      String bookUrl = "${document['bookUrl']}";
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyePubApp(bookUrl)));
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Bhajans()));
                    },
                    child: Row(
                      children: [
                        Card(
                          color: cardColor,
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                  // height: 270,
                                    width: screenWidth*0.3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: FancyShimmerImage(
                                        // height: 300,
                                        imageUrl: "${document['imageUrl']}",
                                      shimmerDuration: const Duration(seconds: 200),
                                      shimmerBaseColor: Colors.orange,
                                      shimmerHighlightColor: Colors.yellowAccent,
                                      shimmerBackColor: Colors.white,
                                      boxFit: BoxFit.contain,
                                      ),
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
                                      text: "${document['bookTitle']}",
                                      color: captionColor,
                                      textSize: 23,


                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
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
