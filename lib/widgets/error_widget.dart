import 'package:flutter/material.dart';

class Error_Widget extends StatelessWidget {
  const Error_Widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: const [
          Icon(
            Icons.error,
          ),
          Text("त्रुटि होने के लिये खेद है")
        ],
      ),
    );
  }
}