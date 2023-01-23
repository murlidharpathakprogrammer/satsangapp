import 'package:flutter/material.dart';

class ResidingMonkWidget extends StatelessWidget{
  const ResidingMonkWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<String> residingMonks = [
      'महर्षि योगनन्द परमहंस जी महाराज (आचार्य)',
      'गुरु प्रसाद बाबा (व्यवस्थापक)',
      'राम चंद्र बाबा (व्यवस्थापक)',
      'स्वामी प्रभुतानन्द जी महाराज (आचार्य)',
      'महर्षि योगनन्द परमहंस जी महाराज (आचार्य)',
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: residingMonks.length,
      itemBuilder: (context, int index) =>
          ListTile(
            leading: Icon(Icons.flag_circle),
            title: Text('${residingMonks[index]}'),
          ),

    );
  }
}