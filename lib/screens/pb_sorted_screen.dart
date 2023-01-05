import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  List _prBhDetails = [];
  late FixedExtentScrollController controller;

  @override
  void initState() {
    fetchPrBhDetails();
    initState();
    controller = FixedExtentScrollController();
  }

  @override
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
    final Color captionColor =
        themeState.getDarkTheme ? const Color.fromRGBO(255, 166, 40, 1) : Colors.deepOrangeAccent;
    final Color cardColor = themeState.getDarkTheme
        ? const Color.fromRGBO(79, 118, 255, 0.8)
        : const Color.fromRGBO(255, 245, 200, 0.9);
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.orange,
      ),
      // body: Center(
      //   child: Text('${author}, ${type}'),
      // ),
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
                height: 80,
                width: screenWidth,
                child: InkWell(
                  onTap: () {
                    String vidSrc = "${document['vidSrc']}";
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => myYouTubePlayer(v: vidSrc,)
                        )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Card(
                      color: cardColor,
                      elevation: 1,
                      child:ListTile(
                    title: Text("${document['title']}", maxLines: 2, style: const TextStyle(fontWeight: FontWeight.bold),),
                  leading: const Icon(Icons.audiotrack),
                  trailing: Icon(Icons.play_circle_fill_outlined, color: captionColor, size: 40,),
                  // onTap: (){
                  //   // you can add Play/push code over here
                  //   myYouTubePlayer(v: vidSrc,)
                  // },
                ),
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

// class _SecondScreenState extends State<SecondScreen>{
//   List _prBhDetails =[];
//   late FixedExtentScrollController controller;
//
//   @override
//   void initState(){
//     fetchPrBhDetails();
//     super.initState();
//     controller = FixedExtentScrollController();
//   }
//
//   @override
//   void dispose(){
//     controller.dispose();
//     super.dispose();
//   }
//
//   fetchPrBhDetails() async{
//     var firestoreInstance = FirebaseFirestore.instance;
//     QuerySnapshot qn = await firestoreInstance.collection('bhajanPravachan').get();
//     setState(() {
//       for(int i=0; i<qn.docs.length; i++){
//         _prBhDetails.add(
//             {
//               "author":qn.docs[i]["author"],
//               "bookTitle":qn.docs[i]["bookTitle"],
//               "bookUrl":qn.docs[i]["bookUrl"],
//               "imageUrl":qn.docs[i]["imageUrl"],
//               "tag":qn.docs[i]["tag"],
//             }
//           // qn.docs[i]["bookUrl"],
//         );
//         stdout.write(qn.docs[i]["bookUrl"]);
//       }
//     });
//     return qn.docs;
//   }
//
//   StreamController counterController = StreamController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${title}'),
//         backgroundColor: Colors.orange,
//       ),
//       body: Center(
//         child: Text('${author}, ${type}'),
//       ),
//     );
//   }
// }

//Imported from books.dart for reference
