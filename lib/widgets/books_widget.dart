import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';
import '../services/utils.dart';
import 'Books.dart';

class BooksWidget extends StatelessWidget{
  const BooksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Utils utils = Utils(context);
    double _screenWidth = MediaQuery.of(context).size.width;
    final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    final Color txtcol = themeState.getDarkTheme ? Colors.red : Colors.deepOrange;
    final Color captionColor = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color cardColor = themeState.getDarkTheme ? const Color.fromRGBO(53, 93, 113, 0.8) : Color.fromRGBO(249, 211, 124, 0.3);
    Size size = utils.getScreenSize;
    FirebaseFirestore db = FirebaseFirestore.instance;

    void countDocuments() async {
      QuerySnapshot _myDoc = await db.collection('Books').get();
      List<DocumentSnapshot> _myDocCount = _myDoc.docs;
      print(_myDocCount.length);  // Count of Documents in Collection
    }

    // getStarted_readData();
    final List<Map<String, String>> entries = [
      {"auther": "महर्षि मेँहीँ परमहंस जी महाराज की लिखी हुई रचनाएं", "imgUrl": "thisIsUrl1",},
      {"auther": "महर्षि योगनन्द परमहंस जी महाराज की लिखी हुई रचनाएं", "imgUrl": "thisIsUrl2"},
    ];
    final List<int> colorCodes = <int>[600, 500,];


    return Scaffold(
      appBar: AppBar(title: const Text("पाठन सामग्री"), backgroundColor: Colors.orange,),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              splashColor: Colors.red,
              onTap: () {
                print('${index+1} auther clicked');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Books()));
              },
              child: Card(
                shadowColor: cardColor,
                child: SizedBox(
                  width: 200,
                  height: 150,
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        width: 80,
                        height: 80,
                        decoration:  const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(fit: BoxFit.fill, image: NetworkImage('https://myparamhans.in/assets/img/portfolio/edited/1_ccexpress.png',))
                        ),
                      ),
                      // leading: Icon(Icons.music_note,),
                      title: Text(
                        '${entries[index]["auther"]}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      // subtitle: Text('${entries[index]["url"]}'),
                      trailing: Icon(IconlyLight.arrow_right),
                    ),
                  ),
                ),
                color: cardColor,
              ),
            );
          }),
    );
  }
}