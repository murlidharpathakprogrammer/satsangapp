import 'package:flutter/material.dart';
import 'package:satsangapp/widgets/bhajan_widgets.dart';

class PravachanScreen extends StatefulWidget {
  const PravachanScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PravachanScreenState();
}

class _PravachanScreenState extends State<PravachanScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("प्रवचन"),
        backgroundColor: Colors.orange,
      ),
      body: const BhajanWidgets(),
    );
  }
}