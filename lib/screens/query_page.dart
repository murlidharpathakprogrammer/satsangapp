import 'package:flutter/material.dart';

class QueryPage extends StatelessWidget{
  const QueryPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap( //will break to another line on overflow
        direction: Axis.vertical, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              width: 200,
              margin:const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){
                  //action code for button 2
                },
                child: const Text("WhatsApp"),
              )
          ), //button first

          Container(
              width: 200,
              margin:const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){
                  //action code for button 2
                },
                // child: const Icon(Icons.whatsapp),
                child: const Text("Facebook"),
              )
          ), // button second

          Container(
              width: 200,
              margin:const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (){
                  //action code for button 2
                },
                // child: const Icon(Icons.whatsapp),
                child: const Text("Email"),
              )
          ),// button third

          // Add more buttons here
        ],

      ),
    );
  }
}