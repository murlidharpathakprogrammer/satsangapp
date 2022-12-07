// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';
// import '../services/utils.dart';
import 'Books.dart';

class BooksWidget extends StatelessWidget{
  const BooksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    // final Utils utils = Utils(context);
    // double _screenWidth = MediaQuery.of(context).size.width;
    // final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    // final Color txtcol = themeState.getDarkTheme ? Colors.red : Colors.deepOrange;
    // final Color captionColor = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color cardColor = themeState.getDarkTheme ? const Color.fromRGBO(53, 93, 113, 0.8) : const Color.fromRGBO(249, 211, 124, 0.3);
    // Size size = utils.getScreenSize;


    // getStarted_readData();
    final List<Map<String, String>> entries = [
      {"auther": "महर्षि मेँहीँ परमहंस जी महाराज", "imgUrl": "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1669774363/satsangapp/images/books/author/11111-removebg-preview_ltagz8.png",},
      {"auther": "महर्षि योगनन्द परमहंस जी महाराज", "imgUrl": "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1669774018/satsangapp/images/books/author/1_ccexpress_zwaggw.png"},
    ];


    return Scaffold(
      appBar: AppBar(title: const Text("पाठन सामग्री"), backgroundColor: Colors.orange,),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              splashColor: Colors.red,
              onTap: () {
                stdout.write('${index+1} author clicked');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Books()));
              },
              child: Card(
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
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                '${entries[index]["imgUrl"]}',
                              )
                          )
                        ),
                      ),
                      // leading: Icon(Icons.music_note,),
                      title: Text(
                        '${entries[index]["auther"]} की लिखी हुई रचनाएं',
                        style: const TextStyle(fontSize: 20),
                      ),
                      // subtitle: Text('${entries[index]["url"]}'),
                      trailing: const Icon(IconlyLight.arrow_right),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}