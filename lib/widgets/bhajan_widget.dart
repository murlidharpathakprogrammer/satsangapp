import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/widgets/bhajans.dart';
// import 'package:satsangapp/widgets/books_widget.dart';
// import 'package:satsangapp/widgets/text_widget.dart';
// import 'package:shimmer_animation/shimmer_animation.dart';

import '../provider/dark_theme_provider.dart';
// import '../screens/books_screen.dart';
// import '../services/utils.dart';

class BhajanWidget extends StatelessWidget {
  const BhajanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    // final Utils utils = Utils(context);
    // final themeState = Provider.of<DarkThemeProvider>(context);
    // final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;
    // final Color txtcol =
    //     themeState.getDarkTheme ? Colors.red : Colors.deepOrange;
    // final Color captionColor =
    //     themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color cardColor =
        themeState.getDarkTheme ? Colors.white10 : Colors.white;
    // Size size = utils.getScreenSize;
    FirebaseFirestore db = FirebaseFirestore.instance;



    void countDocuments() async {
      QuerySnapshot _myDoc = await db.collection('Books').get();
      List<DocumentSnapshot> _myDocCount = _myDoc.docs;
      print(_myDocCount.length);  // Count of Documents in Collection
    }

    // getStarted_readData();
    countDocuments();
    // double _screenWidth = MediaQuery.of(context).size.width;
    // final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
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
              print('clicked');
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
