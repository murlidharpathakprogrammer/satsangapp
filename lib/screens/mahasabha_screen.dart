import 'package:flutter/material.dart';
import '../widgets/about_satsang_widget.dart';
import '../widgets/mahasabha_widget.dart';

class MahasabhaScreen extends StatefulWidget {
  const MahasabhaScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MahasabhaScreenState();
}

class _MahasabhaScreenState extends State<MahasabhaScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("महासभा", style: TextStyle(
          fontSize: 25,
          shadows: [
            Shadow(
              blurRadius:5.0,  // shadow blur
              color: Colors.black, // shadow color
              offset: Offset(1.0,1.0), // how much shadow will be shown
            ),
          ],),),
        backgroundColor: Colors.orange,
      ),
      body: const MahasabhaWidget(),
      backgroundColor: Colors.amberAccent,
    );
  }
}