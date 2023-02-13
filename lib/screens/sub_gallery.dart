import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/widgets/gallery.dart';

import '../provider/dark_theme_provider.dart';

class SubGalleryScreen extends StatefulWidget {
  final String folderName;
  final List<String> subFolderNames;
  SubGalleryScreen(this.folderName, this.subFolderNames, int lnth, {Key? key}) : super(key: key);
  late List<String> imgLst=['gf', 'gd2', 'j'];

  @override
  _SubGalleryScreenState createState() => _SubGalleryScreenState(folderName, subFolderNames, imgLst);

}

class _SubGalleryScreenState extends State<SubGalleryScreen> {
  String folderName;
  List<String> subFolderNames ;
  List<String> imgLst;

  _SubGalleryScreenState(this.folderName, this.subFolderNames, this.imgLst){
    setImgsVals(subFolderNames[0]);
  }
  setImgsVals(String choice) {
    switch (choice) {
      case 'संतसेवी जी महाराज के साथ बिताये गये कुछ पल':
        imgLst = ['1', '2', '3', '16', '17', '18', '26', '27', '28', '36'];
        break;
      case 'ब्रह्मचर्य के समय की कुछ तस्वीरें':
        imgLst = ['4', '5', '6', '7', '8', '37', '38', '46', '47', '48'];
        break;
      case 'साधु समाज के साथ कुछ तस्वीरें':
        imgLst = ['9', '10', '11', '12', '13','14', '15', '56', '57', '58'];
        break;
      case 'गुरु महाराज के निवास स्थल तथा समाधि स्थल':
        imgLst = ['19', '20', '21', '22', '23','24', '25', '59', '60', '61'];
        break;
      case 'कुप्पाघाट आश्रम में भ्रमण करते हुए':
        imgLst = ['29', '30', '31', '32', '33','34', '35', '62', '63', '64'];
        break;
      case 'जिला वार्षिक, प्रखण्ड अधिवेशन, पर्सनल प्रोग्राम':
        imgLst = ['39', '40', '41', '42', '43','44', '45', '65', '66', '67'];
        break;
      default:
        imgLst = ['71', '1', '2', '3', '4', '5'];
        break;
    }
  }

    @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color bgColor =
    themeState.getDarkTheme ? Colors.black : Colors.white;
    final List<Color> crdTxtCols =
    themeState.getDarkTheme ? [Colors.black, Colors.white] : [Colors.black, Colors.black];
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // final List<Color> crdCols = [Colors.lightGreenAccent, Colors.white70, Colors.orangeAccent, Colors.lightBlueAccent];

    InkWell _buildImgsCrd(Color crdCol, List<Color> crdCols, String folderName, List<String> imgIndxLst, int lnth, int colIndex) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GridGalleryScreen(imgLst: imgLst, folderName: folderName,)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 6.0,
            color: crdCol,
            shadowColor: color.withBlue(255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: SizedBox(
              height: screenHeight * 0.3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(folderName, style: TextStyle(color: crdTxtCols[0], fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,),
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
                  const Spacer(),
                  Container(color: bgColor.withOpacity(0.2), width: double.infinity,child: Center(child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text('और देखें', style: TextStyle(color: crdTxtCols[1]),),),
                  )),
                ],
              ),
            ),
          ),
        ),
      );
    }

    int lnth = subFolderNames.length;
    List<Color> crdColsList = [Colors.lightGreen, Colors.cyan, Colors.orange, Colors.deepPurple];
    // List<Color> crdTxtColsList = themeState.getDarkTheme ? [Colors.black, Colors.black] : [Colors.black, Colors.white];
    return Scaffold(
      appBar: AppBar(
        title: Text(folderName),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
          lnth,
          (index) {
            return _buildImgsCrd(crdColsList[index], [Colors.white38, Colors.black, bgColor, ], subFolderNames[index], ['1', '2', '000'], lnth, index);
    },
        ),
      ),
    ));
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
