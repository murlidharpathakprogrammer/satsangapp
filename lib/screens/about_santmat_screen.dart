import 'package:flutter/material.dart';
import '../widgets/about_satsang_widget.dart';

class SantmatScreen extends StatefulWidget {
  const SantmatScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SantmatScreenState();
}

class _SantmatScreenState extends State<SantmatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "संतमत परिचय",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: const AboutSantmatWidget(),
    );
  }
}
