import 'package:flutter/material.dart';
import 'package:satsangapp/widgets/bhajan_widget.dart';

class BhajanScreen extends StatefulWidget {
  const BhajanScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BhajanScreenState();
}

class _BhajanScreenState extends State<BhajanScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("भजन"),
        backgroundColor: Colors.orange,
      ),
      body: const BhajanWidget(),
    );
  }
}