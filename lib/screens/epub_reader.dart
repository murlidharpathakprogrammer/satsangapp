import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';

class MyePubApp extends StatefulWidget {
  final String bookUrl;
  const MyePubApp(this.bookUrl, {Key? key}) : super(key: key);

  @override
  _MyePubAppState createState() => _MyePubAppState(bookUrl);
}

class _MyePubAppState extends State<MyePubApp> with WidgetsBindingObserver {
  late EpubController _epubController;
  String bookUrl;
  _MyePubAppState(this.bookUrl);

  @override
  void initState() {
    super.initState();
    _epubController = EpubController(
      document: EpubDocument.openAsset(bookUrl),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Show actual chapter name
        title: EpubViewActualChapter(
            controller: _epubController,
            builder: (chapterValue) => Text(
                  chapterValue?.chapter?.Title?.replaceAll('\n', '').trim() ??
                      '',
                  textAlign: TextAlign.start,
                )),
        backgroundColor: Colors.orange,
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
