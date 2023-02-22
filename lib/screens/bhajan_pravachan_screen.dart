import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/pb_sorted_screen.dart';
import '../provider/dark_theme_provider.dart';

class BhajanPravachanScreen extends StatefulWidget {
  const BhajanPravachanScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BhajanPravachanScreenState();
}

class _BhajanPravachanScreenState extends State<BhajanPravachanScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color cardColor =
        themeState.getDarkTheme ? const Color.fromRGBO(
            124, 84, 63, 1.0) : const Color.fromRGBO(
            255, 243, 108, 1.0);

    final List<Map<String, String>> entries = [
      {
        "title": "स्वामी जी का प्रवचन",
        "author": "swamiji",
        "type": "sp",
        "type_hi": "प्रवचन",
        "url":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/yoganand.png"
      },
      {
        "title": "स्वामी जी का भजन",
        "author": "swamiji",
        "type": "sb",
        "type_hi": "भजन",
        "url":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/yoganand.png"
      },
      {
        "title": "अन्य संतों का प्रवचन",
        "author": "others",
        "type": "op",
        "type_hi": "प्रवचन",
        "url":
            "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1669762926/satsangapp/images/hoomeSwiper/logoCenter_f2mvyb.png"
      },
      {
        "title": "अन्य संतों का भजन",
        "author": "others",
        "type": "ob",
        "type_hi": "भजन",
        "url":
        "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg"
      },
      {
        "title": "गुरु महाराज का प्रवचन",
        "author": "gm",
        "type": "gp",
        "type_hi": "भजन",
        "url":
            "https://ik.imagekit.io/prmhnsimgkt/sntmtstngapp/imgs/mnksProfiles/menhi.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "भजन एवं प्रवचन",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              splashColor: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PbSorted(
                      title: '${entries[index]["title"]}',
                      type: '${entries[index]["type"]}',
                      author: '${entries[index]["author"]}',
                    ),
                  ),
                );
              },
              child: Card(
                shadowColor: Colors.blue,
                color: cardColor,
                child: SizedBox(
                  width: 200,
                  height: 130,
                  child: Center(
                    child: ListTile(
                      minLeadingWidth: 100,
                      leading: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  '${entries[index]["url"]}',
                                ))),
                      ),
                      title: Text(
                        '${entries[index]["title"]}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      // subtitle: const Text("subtitle"),
                      trailing: const Icon(IconlyLight.arrow_right_2),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
