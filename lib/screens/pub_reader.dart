import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;

class MyPubApp extends StatefulWidget {
  const MyPubApp( {Key? key}) : super(key: key);

  @override
  _MyPubAppState createState() => _MyPubAppState();
}

class _MyPubAppState extends State<MyPubApp> with WidgetsBindingObserver {

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    _setSystemUIOverlayStyle();
  }

  Brightness get platformBrightness =>
      MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
          .platformBrightness;

  void _setSystemUIOverlayStyle() {
    if (platformBrightness == Brightness.light) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.grey[50],
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.grey[850],
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Epub demo',
    theme: ThemeData(
      primarySwatch: Colors.orange,
      brightness: Brightness.light,
    ),
    darkTheme: ThemeData(
      primarySwatch: Colors.orange,
      brightness: Brightness.dark,
    ),
    debugShowCheckedModeBanner: false,
    home: const MyHomePage(),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late EpubController _epubReaderController;

  @override
  void initState() {
    _epubReaderController = EpubController(
      document:
      EpubDocument.openAsset('assets/PhilosophyOfLiberationAManualOfSantMatMysticism_Philosophy_Of_Liberation.epub'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _epubReaderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: EpubViewActualChapter(
        controller: _epubReaderController,
        builder: (chapterValue) => Text(
          chapterValue?.chapter?.Title?.replaceAll('\n', '').trim() ?? '',
          textAlign: TextAlign.start,
        ),
      ),
    ),
    drawer: Drawer(
      child: EpubViewTableOfContents(controller: _epubReaderController),
    ),
    body: EpubView(
      builders: EpubViewBuilders<DefaultBuilderOptions>(
        options: const DefaultBuilderOptions(),
        chapterDividerBuilder: (_) => const Divider(),
      ),
      controller: _epubReaderController,
    ),
  );
}