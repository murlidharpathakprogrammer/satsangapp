import 'package:flutter/material.dart';
import '../widgets/about_satsang_widget.dart';

class SantmatScreen extends StatefulWidget {
  const SantmatScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SantmatScreenState();
}

class _SantmatScreenState extends State<SantmatScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("संतमत परिचय", style: TextStyle(
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
      body: const AboutSantmatWidget(),
    );
  }
}