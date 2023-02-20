// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';
// import '../services/utils.dart';
import 'Books.dart';

class BooksWidget extends StatelessWidget {
  const BooksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color cardColor = themeState.getDarkTheme
        ? const Color.fromRGBO(53, 93, 113, 0.8)
        : const Color.fromRGBO(249, 211, 124, 0.3);

    // getStarted_readData();
    final List<Map<String, String>> entries = [
      {
        "author": "महर्षि मेँहीँ परमहंस जी महाराज",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg",
        "tag": "1"
      },
      {
        "author": "महर्षि योगानन्द परमहंस जी महाराज",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/yoganand.png?tr:w-1000,h-700",
        "tag": "2"
      },
      {
        "author": "महर्षि हरिनन्दन",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/harinandan.jpg",
        "tag": "3"
      },
      {
        "author": "महर्षि संतसेवी जी महाराज",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/santsevi.jpg?tr=w-900,h-700,cm-extract,xc-530,yc-500",
        "tag": "4"
      },
      {
        "author": "स्वामी कमलानंद जी महाराज",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/kamlanand.jpg?tr=w-1000,h-700",
        "tag": "5"
      },
      {
        "author": "स्वामी स्वरूपानंद जी महाराज",
        "imgUrl":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/default.png",
        "tag": "6"
      },
    ];

    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shadowColor: cardColor,
              color: cardColor,
              child: SizedBox(
                width: 200,
                height: 150,
                child: Center(
                  child: ListTile(
                    leading: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                '${entries[index]["imgUrl"]}',
                              ))),
                    ),
                    // leading: Icon(Icons.music_note,),
                    title: Text(
                      '${entries[index]["tag"]}. ${entries[index]["author"]} की लिखी हुई रचनाएं',
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 18),
                    ),
                    // subtitle: Text('${entries[index]["url"]}'),
                    trailing: InkWell(
                      highlightColor: Colors.transparent,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.blue, ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 10.0, bottom: 8, left: 15, right: 15),
                          child: Text(
                            "देखें",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      onTap: () {
                        stdout.write('${index + 1} author clicked');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Books('${entries[index]["author"]}','${entries[index]["tag"]}')));
                      },
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
