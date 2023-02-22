import 'package:flutter/material.dart';

class ResidingMonkWidget extends StatelessWidget{
  const ResidingMonkWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<String> residingMonks = [
      'महर्षि योगनन्द परमहंस जी महाराज (आचार्य)',
      'गुरु प्रसाद बाबा (व्यवस्थापक)',
      'राम चंद्र बाबा (व्यवस्थापक)',
      'स्वामी प्रभुतानन्द जी महाराज',
      'प्रलोग बाबा',
      'ब्रह्मचारी विद्यानंद',
      'शिवानंद सुमन',
      'पंकज ब्रह्मचारी',
      'लक्ष्मण बाबा'
    ];
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: residingMonks.length,
      itemBuilder: (context, int index) =>
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(residingMonks[index]),
          ),

    );
  }
}