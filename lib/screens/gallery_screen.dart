import 'dart:io';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/screens/sub_gallery.dart';
import 'package:satsangapp/widgets/gallery.dart';

import '../provider/dark_theme_provider.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color crdCol = themeState.getDarkTheme ? const Color.fromRGBO(108, 50, 0, 100) : const Color.fromRGBO(
        255, 166, 54, 0.7);
    final Color bgColor =
        themeState.getDarkTheme ? Colors.black : Colors.white;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;


    InkWell _buildImgsCrd(Color color, String cardTitle, List<String> imgIndxLst, List<String> subFolders ) {
      int lnth = subFolders.length;
      return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SubGalleryScreen(subFolders, lnth)),
            );
          },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 6.0,
            color: crdCol,
            shadowColor: color.withBlue(255),
            /*1*/
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: SizedBox(
              height: screenHeight * 0.3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(cardTitle, style: TextStyle(color: bgColor, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.2,
                    padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      children: List.generate(
                        3,
                        (index) {
                          String thisImgUrlQual10 =
                              'https://ik.imagekit.io/imgktmdp/monks/tr:q-1/monkimg__${imgIndxLst[index]}_.JPG';
                          return Padding(
                            padding: const EdgeInsets.only(left: 4.0, right: 4,),
                            child: FancyShimmerImage(
                              imageUrl: thisImgUrlQual10,
                              boxFit: BoxFit.cover,
                              shimmerHighlightColor: Colors.orange,
                              shimmerBaseColor: Colors.white,
                              shimmerDuration: const Duration(milliseconds: 1000),
                              errorWidget: const Icon(
                                  Icons.photo_size_select_actual_outlined),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(color: bgColor.withOpacity(0.2), width: double.infinity,child: const Center(child: Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text('और फोटो देखें', style: TextStyle(color: Colors.blueAccent),),
                  )),),
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
        child: Column(
          children: [
            _buildImgsCrd(
                crdCol, "महर्षि योगनन्द परमहंस जी महाराज का कुप्पाघाट में कुछ तस्वीरें", ['1', '2', '000'], ['संतसेवी जी महाराज के साथ बिताये गये कुछ पल', 'ब्रह्मचर्य के समय की कुछ तस्वीरें']),
            _buildImgsCrd(
                crdCol, "वर्तमान के कुछ पल", ['10', '11', '000'], ['साधु समाज के साथ कुछ तस्वीरें', 'गुरु महाराज के निवास स्थल तथा समाधि स्थल', 'कुप्पाघाट आश्रम में भ्रमण करते हुए']),
            _buildImgsCrd(
                crdCol, "बीते कार्यक्रम की कुछ तस्वीरें", ['21', '22', '000'], ['जिला वार्षिक, प्रखण्ड अधिवेशन, पर्सनल प्रोग्राम']),
            _buildImgsCrd(
                crdCol, "अन्य फोटो", ['31', '32', '000'], []),
          ],
        ),
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.photo_size_select_actual_outlined),
        backgroundColor: Colors.deepOrangeAccent,
      ),
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
