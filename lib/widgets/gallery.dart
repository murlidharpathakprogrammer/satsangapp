import 'dart:core';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class GalleryState with ChangeNotifier {
  bool _imagesLoaded = false;

  bool get imagesLoaded => _imagesLoaded;

  set imagesLoaded(bool value) {
    _imagesLoaded = value;
    notifyListeners();
  }
}

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  final Widget _placeHolder = const Image(
      image: AssetImage("assets/images/offers/logoCenter.png"));
  
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width / 2;
    double h = MediaQuery.of(context).size.height / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text("गैलरी"),
        backgroundColor: Colors.orange,
      ),
      body: ChangeNotifierProvider(
          create: (_) => GalleryState(),
        child: FutureBuilder<List<Reference>>(
          future: _getImages(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Provider.of<GalleryState>(context, listen: false)
              //     .imagesLoaded = true;
              return GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return FutureBuilder<String>(
                    future: snapshot.data?[index]?.getDownloadURL(),
                    builder: (context, AsyncSnapshot urlSnapshot) {
                      if (urlSnapshot.hasData) {
                        return CachedNetworkImage (
                          imageUrl: urlSnapshot.data,
                          // boxFit: BoxFit.cover,
                          width: w,
                          height: h,
                          // shimmerBaseColor: Colors.orange,
                          // shimmerHighlightColor: Colors.green,
                          // shimmerDuration: const Duration(seconds: 1),
                        );
                      } else if (urlSnapshot.hasError) {
                        return Text("Error: ${urlSnapshot.error}");
                      }
                      return _placeHolder;
                    },
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
              );
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            }
            return Consumer<GalleryState>(
              builder: (context, state, _) {
                return state.imagesLoaded ? Container() : _placeHolder;
              },
            );
          },
        ),
      ),
    );
  }

  Future<List<Reference>> _getImages() async {
    final bucket =
        FirebaseStorage.instance.ref().child("images").child("monks");
    final list = await bucket.listAll();
    return list.items;
  }
}
