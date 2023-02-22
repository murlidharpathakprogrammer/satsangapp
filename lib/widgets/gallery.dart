// import 'dart:core';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:provider/provider.dart';
// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
//
// class GalleryState with ChangeNotifier {
//   bool _imagesLoaded = false;
//
//   bool get imagesLoaded => _imagesLoaded;
//
//   set imagesLoaded(bool value) {
//     _imagesLoaded = value;
//     notifyListeners();
//   }
// }
//
// class GalleryScreen extends StatefulWidget {
//   const GalleryScreen({Key? key}) : super(key: key);
//
//   @override
//   State<GalleryScreen> createState() => _GalleryScreenState();
// }
//
// class _GalleryScreenState extends State<GalleryScreen> {
//
//   final Widget _placeHolder = const Image(
//       image: AssetImage("assets/images/offers/logoCenter.png"));
//
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width / 2;
//     double h = MediaQuery.of(context).size.height / 2;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("गैलरी"),
//         backgroundColor: Colors.orange,
//       ),
//       body: ChangeNotifierProvider(
//           create: (_) => GalleryState(),
//         child: FutureBuilder<List<Reference>>(
//           future: _getImages(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               // Provider.of<GalleryState>(context, listen: false)
//               //     .imagesLoaded = true;
//               return GridView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 itemCount: snapshot.data?.length,
//                 itemBuilder: (context, index) {
//                   return FutureBuilder<String>(
//                     future: snapshot.data?[index]?.getDownloadURL(),
//                     builder: (context, AsyncSnapshot urlSnapshot) {
//                       if (urlSnapshot.hasData) {
//                         return CachedNetworkImage (
//                           imageUrl: urlSnapshot.data,
//                           // boxFit: BoxFit.cover,
//                           width: w,
//                           height: h,
//                           // shimmerBaseColor: Colors.orange,
//                           // shimmerHighlightColor: Colors.green,
//                           // shimmerDuration: const Duration(seconds: 1),
//                         );
//                       } else if (urlSnapshot.hasError) {
//                         return Text("Error: ${urlSnapshot.error}");
//                       }
//                       return _placeHolder;
//                     },
//                   );
//                 },
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 10.0,
//                   crossAxisSpacing: 10.0,
//                   childAspectRatio: 1.0,
//                 ),
//               );
//             } else if (snapshot.hasError) {
//               return Text("Error: ${snapshot.error}");
//             }
//             return Consumer<GalleryState>(
//               builder: (context, state, _) {
//                 return state.imagesLoaded ? Container() : _placeHolder;
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   Future<List<Reference>> _getImages() async {
//     final bucket =
//         FirebaseStorage.instance.ref().child("images").child("monks");
//     final list = await bucket.listAll();
//     return list.items;
//   }
// }

// import 'dart:html';
// import 'dart:io';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/dark_theme_provider.dart';

class GridGalleryScreen extends StatefulWidget {
  final String folderName;
  final List<String> imgLst;
  const GridGalleryScreen({Key? key, required this.imgLst, required this.folderName}) : super(key: key);


  @override
  _GridGalleryScreenState createState() => _GridGalleryScreenState(imgLst, folderName);
}

class _GridGalleryScreenState extends State<GridGalleryScreen> {
  List<String> imgsLst= ['h', 'njk'];
  String folderName;

  _GridGalleryScreenState(this.imgsLst, this.folderName);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color borderColor = themeState.getDarkTheme ? Colors.white : Colors.black;
    final Color bgColor =
        themeState.getDarkTheme ? Colors.white10 : Colors.white;

    return Scaffold(
      appBar: AppBar(
        title:  Text(folderName),
        backgroundColor: Colors.deepOrange,
      ),
      backgroundColor: bgColor,
      body: GridView.count(
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(
          imgsLst.length,
          (index) {
            String thisImgUrlQual10 =
                'https://ik.imagekit.io/imgktmdp/monks/tr:q-1/monkimg__${imgsLst[index]}_.JPG';
            String thisImgUrl =
                'https://ik.imagekit.io/imgktmdp/monks/tr:q-20/monkimg__${imgsLst[index]}_.JPG';
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                    color: borderColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.yellow, width: 1)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenImagePage(
                          imageUrl: thisImgUrl,
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child:
                      FancyShimmerImage(
                        imageUrl: thisImgUrlQual10,
                        boxFit: BoxFit.cover,
                        shimmerHighlightColor: Colors.orange,
                        shimmerBaseColor: Colors.white,
                        shimmerDuration: const Duration(milliseconds: 1000),
                        errorWidget:
                            const Icon(Icons.photo_size_select_actual_outlined),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({Key? key, required this.imageUrl}) : super(key: key);

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
