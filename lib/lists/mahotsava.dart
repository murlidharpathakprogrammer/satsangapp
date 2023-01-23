import 'package:flutter/material.dart';

class MahotsavaWidgetList extends StatelessWidget{
  const MahotsavaWidgetList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<String> mahoList = [
      'वार्षिक महोत्सव 1',
      'वार्षिक महोत्सव 2',
      'वार्षिक महोत्सव 3',
      'वार्षिक महोत्सव 4',
      'वार्षिक महोत्सव 5'
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: mahoList.length,
      itemBuilder: (context, int index) =>
         ListTile(
          leading: Icon(Icons.flag_circle),
          title: Text('${mahoList[index]}'),
        ),

    );
  }
}