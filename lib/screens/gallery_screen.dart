import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/sub_gallery.dart';

import '../provider/dark_theme_provider.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color bgColor = themeState.getDarkTheme ? Colors.black : Colors.white;
    final Color crdTxtCol =
        themeState.getDarkTheme ? Colors.black : Colors.black;
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenHeight = MediaQuery.of(context).size.height;

    InkWell buildImgsCrd(Color color, Color crdTxtCol, String folderName,
        List<String> imgIndxLst, List<String> subFolders) {
      int lnth = subFolders.length;
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SubGalleryScreen(folderName, subFolders, lnth)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3.0,
            // color: color,
            shadowColor: Colors.deepOrange,
            /*1*/
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    colors: [Colors.red, Colors.cyan],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://ik.imagekit.io/imgktmdp/monks/tr:pr-true/monkimg__${imgIndxLst[0]}_.JPG'),

                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: screenWidth/3,
                    // color: color.withOpacity(0.8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color.fromRGBO(119, 92, 0, 1), Colors.white30, Colors.white54, color.withOpacity(0.8), color.withOpacity(0.8), color.withOpacity(0.8), color.withOpacity(0.8), Colors.deepOrange.shade200],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth*0.8,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text(folderName,
                              style: TextStyle(
                                  color: crdTxtCol,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios, size: 50, color: Colors.white, shadows: [Shadow(color: Colors.black, blurRadius: 10)],)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("गैलरी"),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            buildImgsCrd(
                const Color.fromRGBO(215, 255, 162, 1.0),
                crdTxtCol,
                "महर्षि योगनन्द परमहंस जी महाराज का कुप्पाघाट में कुछ तस्वीरें",
                [
                  '1',
                  '2',
                  '000'
                ],
                [
                  'संतसेवी जी महाराज के साथ बिताये गये कुछ पल',
                  'ब्रह्मचर्य के समय की कुछ तस्वीरें',
                  'शाही स्वामी जी महाराज के साथ बिताये गये कुछ पल'
                ]),
            buildImgsCrd(Color.fromRGBO(169, 255, 255, 1.0), crdTxtCol, "वर्तमान के कुछ पल", [
              '10',
              '11',
              '000'
            ], [
              'साधु समाज के साथ कुछ तस्वीरें',
              'गुरु महाराज के निवास स्थल तथा समाधि स्थल',
              'कुप्पाघाट आश्रम में भ्रमण करते हुए'
            ]),
            buildImgsCrd(
                Color.fromRGBO(206, 255, 216, 1.0),
                crdTxtCol,
                "बीते कार्यक्रम की कुछ तस्वीरें",
                ['21', '22', '000'],
                ['जिला वार्षिक', 'प्रखण्ड अधिवेशन', 'पर्सनल प्रोग्राम']),
            buildImgsCrd(Colors.red.shade200, crdTxtCol, "अन्य फोटो",
                ['31', '32', '000'], ['अन्य फोटो']),
            buildImgsCrd(Colors.lightBlue.shade50, crdTxtCol, "महाधिवेशन का फोटो", [
              '10',
              '11',
              '000'
            ], [
              '११०वाँ महाधिवेशन कंचनपुर',
              '१११वाँ महाधिवेशन कंचनपुर',
            ]),
          ],
        ),
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: FancyShimmerImage(
              imageUrl: imageUrl,
              shimmerHighlightColor: Colors.orange,
              shimmerBaseColor: Colors.white,
              shimmerBackColor: Colors.green,
              width: screenWidth,
              boxFit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
