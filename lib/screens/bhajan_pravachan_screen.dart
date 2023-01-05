// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/pb_sorted_screen.dart';
// import 'package:satsangapp/widgets/bhajan_widgets.dart';

import '../provider/dark_theme_provider.dart';
// import '../widgets/bhajan_widget.dart';
// import '../widgets/bhajans.dart';

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
        themeState.getDarkTheme ? Colors.white10 : Colors.white;

    final List<Map<String, String>> entries = [
      {
        "title" : "स्वामी जी का प्रवचन",
        "author": "swamiji",
        "type" : "sp",
        "type_hi" : "प्रवचन",
        "url":
            "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1667900306/satsangapp/images/hoomeSwiper/2.png"
      },
      {
        "title" : "स्वामी जी का भजन",
        "author": "swamiji",
        "type" : "sb",
        "type_hi" : "भजन",
        "url":
            "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1667900306/satsangapp/images/hoomeSwiper/2.png"
      },
      {
        "title" : "अन्य संतों का प्रवचन",
        "author": "others",
        "type" : "op",
        "type_hi" : "प्रवचन",
        "url":
            "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1669762926/satsangapp/images/hoomeSwiper/logoCenter_f2mvyb.png"
      },
      {
        "title" : "अन्य संतों का भजन",
        "author": "others",
        "type" : "ob",
        "type_hi" : "भजन",
        "url":
            "https://res.cloudinary.com/de9omilub/image/upload/c_thumb,w_200,g_face/v1669762926/satsangapp/images/hoomeSwiper/logoCenter_f2mvyb.png"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("भजन एवं प्रवचन",
        style: TextStyle(
          fontSize: 25,
          shadows: [
          Shadow(
          blurRadius:5.0,  // shadow blur
          color: Colors.black, // shadow color
          offset: Offset(1.0,1.0), // how much shadow will be shown
        ),
          ],
        ),),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              splashColor: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PbSorted(title: '${entries[index]["title"]}', type: '${entries[index]["type"]}', author: '${entries[index]["author"]}',),
                  ),
                );

              },
              child: Card(
                shadowColor: cardColor,
                color: cardColor,
                child: SizedBox(
                  width: 200,
                  height: 150,
                  child: Center(
                    child: ListTile(
                      leading: SizedBox(
                        /*width: 50,
                        height: 50,*/
                        child: FancyShimmerImage(
                          width: 50,
                            height: 50,
                            imageUrl: '${entries[index]["url"]}'
                        ),
                      ),
                      title: Text(
                        '${entries[index]["title"]}',
                        style: const TextStyle(fontSize: 25),
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
