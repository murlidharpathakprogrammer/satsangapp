import 'package:flutter/material.dart';

class DownloadsScreen extends StatelessWidget{
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Scaffold(
    //   body: Center(
    //       child: Text('Downloads Screen')
    //   ),
    // );
    return Scaffold(
      body: Center(
        // child: Text('Downloads Screen')
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Jai Shree Ram'),
              subtitle: Text('Best of Bajrang Dal'),
            ),
          ],
        ),
      ),
    );
  }
}