import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/widgets/bhajans.dart';
import '../provider/dark_theme_provider.dart';

class BhajanWidgets extends StatelessWidget {
  const BhajanWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color cardColor =
        themeState.getDarkTheme ? Colors.white10 : Colors.white;
    FirebaseFirestore db = FirebaseFirestore.instance;



    void countDocuments() async {
      QuerySnapshot myDoc = await db.collection('Books').get();
      List<DocumentSnapshot> myDocCount = myDoc.docs;
      stdout.write(myDocCount.length);  // Count of Documents in Collection
    }

    countDocuments();

    final List<Map<String, String>> entries = [
      {"auther": "स्वामी जी का प्रवचन", "url": "thisIsUrl1"},
      {"auther": "स्वामी जी का भजन", "url": "thisIsUrl2"},
      {"auther": "अन्य संतों का प्रवचन", "url": "thisIsUrl3"},
      {"auther": "अन्य संतों का भजन", "url": "thisIsUrl4"},

    ];
    // final List<int> colorCodes = <int>[600, 500, 100, 300];

    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            splashColor: Colors.red,
            onTap: () {
              stdout.write('clicked');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Bhajans()));
            },
            child: Card(
              shadowColor: cardColor,
              color: cardColor,
              child: SizedBox(
                width: 200,
                height: 150,
                child: Center(
                  child: ListTile(
                    leading: const Icon(Icons.music_note),
                    title: Text(
                      '${entries[index]["auther"]}',
                      style: const TextStyle(fontSize: 25),
                    ),
                    subtitle: Text('${entries[index]["url"]}'),
                    trailing: const Icon(IconlyLight.arrow_right),
                  ),
                ),
              ),
            ),
          );
        });
    // ]
    //   ),
    // );
  }
}
