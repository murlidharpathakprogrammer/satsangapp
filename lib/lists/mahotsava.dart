import 'package:flutter/material.dart';

class MahotsavaWidgetList extends StatelessWidget{
  const MahotsavaWidgetList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<String> mahoList = [
      'गुरु जयंती',
      'गुरु पूर्णिमा',
      '9 दिनों का something 25 जनवरी से 30 जनवरी तक',
      '15 अगस्त आजादी महोत्सव',
      '26 जनवरी गणतंत्र दिवस'
    ];
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: mahoList.length,
      itemBuilder: (context, int index) =>
         ListTile(
          leading: const Icon(Icons.flag_circle),
          title: Text(mahoList[index]),
        ),

    );
  }
}