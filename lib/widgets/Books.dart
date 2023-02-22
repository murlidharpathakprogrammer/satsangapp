import 'dart:io';
import 'dart:async';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/pdf_viewer.dart';
import 'package:satsangapp/widgets/text_widget.dart';
import '../provider/dark_theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Books extends StatefulWidget {
  final String authNo;
  final String author;
  const Books(this.author, this.authNo, {Key? key}) : super(key: key);

  @override
  _BooksState createState() => _BooksState(author, authNo);
}

class _BooksState extends State<Books> {
  String author;
  String tag;
  final List _booksDetails = [];
  late FixedExtentScrollController controller;
  _BooksState(this.author, this.tag);

  @override
  void initState() {
    fetchBookDetails();
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  fetchBookDetails() async {
    var firestoreInstance = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestoreInstance
        .collection('Books')
        .where("tag", isEqualTo: tag)
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _booksDetails.add({
          "author": qn.docs[i]["author"],
          "bookTitle": qn.docs[i]["bookTitle"],
          "bookUrl": qn.docs[i]["bookUrl"],
          "imageUrl": qn.docs[i]["imageUrl"],
          "tag": qn.docs[i]["tag"],
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
    final Color cardColor = themeState.getDarkTheme
        ? const Color.fromRGBO(53, 93, 113, 0.8)
        : const Color.fromRGBO(255, 245, 200, 0.9);
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(author),
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Books')
            .where("tag", isEqualTo: tag)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            physics: const BouncingScrollPhysics(),
            children: snapshot.data!.docs.map((document) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 3, left: 10, right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: FancyShimmerImage(
                                width: screenWidth * 0.3,
                                height: screenWidth * 0.4,
                                imageUrl: "${document['imageUrl']}",
                                shimmerDuration: const Duration(seconds: 200),
                                shimmerBaseColor: Colors.orange,
                                shimmerHighlightColor: Colors.yellowAccent,
                                shimmerBackColor: Colors.white,
                                boxFit: BoxFit.contain,
                                errorWidget: Container(
                                    color: Colors.blue,
                                    child: const Icon(Icons.menu_book_rounded)),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.05,
                              // height: 300,
                            ),
                            SizedBox(
                              width: screenWidth * 0.5,
                              height: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.5,
                                    child: TextWidget(
                                      text: "${document['bookTitle']}",
                                      color: captionColor,
                                      textSize: 23,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        highlightColor: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                  width: 1,
                                                  color: Colors.blue,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15.0,
                                                  bottom: 13,
                                                  left: 20,
                                                  right: 20),
                                              child: Text(
                                                "पढ़ें",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          String bookUrl =
                                              "${document['bookUrl']}";
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PdfViewerScreen(
                                                          bookUrl)));
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
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
