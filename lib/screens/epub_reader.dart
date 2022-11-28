import 'dart:typed_data';

import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_epub/flutter_epub.dart';

class MyePubApp extends StatefulWidget {
  final String bookUrl;
  const MyePubApp(this.bookUrl, {Key? key}) : super(key: key);
  // MyePubApp( {required String url, Key? key}) : super(key: key);

  @override
  _MyePubAppState createState() => _MyePubAppState(bookUrl);
}

class _MyePubAppState extends State<MyePubApp> with WidgetsBindingObserver {
  late EpubController _epubController;
String bookUrl;
  _MyePubAppState(this.bookUrl);

  // String get url => url;
  // print(url);

  // String url = url;
  @override
  void initState() {
    super.initState();
    _epubController = EpubController(
      // Load document
      // document: EpubDocument.openData(InternetFile.get('https://link.to/book.epub')),
      document: EpubDocument.openAsset(bookUrl),
      // Set start point
      epubCfi: 'epubcfi(/6/6[chapter-2]!/4/2/1612)',
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(url);
    return Scaffold(
      appBar: AppBar(
        // Show actual chapter name
        title: EpubViewActualChapter(
            controller: _epubController,
            builder: (chapterValue) => Text(
                  'Chapter: ' +
                      (chapterValue?.chapter?.Title
                              ?.replaceAll('\n', '')
                              .trim() ??
                          ''),
                  textAlign: TextAlign.start,
                )),
      ),
      // Show table of contents
      drawer: Drawer(
        child: EpubViewTableOfContents(
          controller: _epubController,
        ),
      ),
      // Show epub document
      body: EpubView(
        controller: _epubController,
      ),
    );
  }
}
