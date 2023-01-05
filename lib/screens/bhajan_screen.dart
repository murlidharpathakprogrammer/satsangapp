import 'package:flutter/material.dart';
// import 'package:satsangapp/widgets/bhajan_widgets.dart';

import '../widgets/bhajan_widget.dart';

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
        title: const Text("भजन",
        style: TextStyle(
          fontSize: 25,
          shadows: [
            Shadow(
              blurRadius:10.0,  // shadow blur
              color: Colors.black, // shadow color
              offset: Offset(1.0,1.0), // how much shadow will be shown
            ),
          ],
        ),),
        backgroundColor: Colors.orange,
      ),
      body: const BhajanWidget(),
    );
  }
}