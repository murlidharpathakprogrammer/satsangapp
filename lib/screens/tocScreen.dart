import 'dart:io';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
// import 'package:satsangapp/auth_controller.dart';
import '../lists/tocLists.dart';
import '../provider/dark_theme_provider.dart';
// import '../widgets/text_widget.dart';

class TocScreen extends StatefulWidget {
  const TocScreen({Key? key}) : super(key: key);

  @override
  State<TocScreen> createState() => _TocScreenState();
}

class _TocScreenState extends State<TocScreen> {


  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
        appBar: AppBar(title: const Text("Terms and Conditions"), backgroundColor: Colors.orangeAccent,),
        body: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Title(color: Colors.black, child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text("Welcome to Santmat Satsang! By using our mobile application, you agree to be bound by the following terms and conditions:", style: TextStyle(color: Colors.red),)),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 1150, child: const TocListWidget())
                      ],
                    ),
                  ),
                  Title(color: Colors.black, child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text("By using our mobile application, you confirm that you accept these terms and conditions and that you agree to comply with them. If you do not agree to these terms, you must not use our mobile application.", style: TextStyle(color: Colors.red),)),
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}