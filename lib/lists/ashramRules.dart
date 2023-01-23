import 'package:flutter/material.dart';

class AshramRulesWidget extends StatelessWidget{
  const AshramRulesWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<String> ashramRulesList = [
      'महर्षि मेंही योग आश्रम एक आध्यात्मिक संस्था है।',
      'आश्रम में प्रवेश कर व्यवस्थापक या कार्यालय से संपर्क करें, बिना अनुमति लिए आश्रम में निवास ना करें',
      'आश्रम में निवास करने वाले सभी साधु महात्माओं एवं धर्म प्रेमियों को स्तुति विनती एवं ध्यान सत्संग में भाग लेना अनिवार्य है',
      'आश्रम में 3 दिन तक ही निवास कर सकते हैं विशेष परिस्थिति में व्यवस्थापक या संस्थापक से आदेश लेकर समय सीमा बढ़ाई जा सकती है',
      'बिना अभिभावक के किसी महिला को आश्रम में रात्रि निवास की अनुमति नहीं है',
      'ध्यान अभ्यास एवं सत्संग के समय आश्रम में बातचीत करना मोबाइल फोन पर बातचीत सख्त मना हैा',
      'आश्रम के अंदर तंबाकू गुटखा बीड़ी सिगरेट मांस मछली मदिरा एवं किसी भी प्रकार का नशा सेवन करना या नशा सेवन कर आश्रम में प्रवेश करना सख्त मना है',
      'आश्रम में प्रवेश करने पर मां बहन मर्यादा के साथ रहें ऐसी महात्मा से हास्य व्यंग वाली बातें ना करें',
      'आश्रम की संपत्ति को किसी प्रकार नुकसान ना पहुंचावें, अपने सामान की रक्षा स्वयं करें',
      ' दान की राशि दान पेटी में ही डालें',
      ' भोजन की घंटी बजते ही भोजनालय में सभी आश्रम वासी एक साथ भोजन करेंगे एवं स्वयं सफाई करेंगे',
      'आश्रम में अश्लील गाना बजाना टीवी देखना सख्त मना है',
      ' कृपया आश्रम की पवित्रता एवं सफाई पर अवश्य ध्यान दें जहां-तहां थूकना पेशाब पकाना करना सख्त मना है',
      'सभी आश्रम वासी एक दूसरे के प्रति सहयोग की भावना रखेंगे बारे को सम्मान एवं छोटों को प्यार से प्यार का भाव रखेंगे आश्रम की मर्यादा एवं संतमत सिद्धांत के विरुद्ध चलने वाले सज्जनों को व्यवस्थापक बैठक बुलाकर निष्कासित करेंगे'
    ];
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ashramRulesList.length,
      itemBuilder: (context, int index) =>
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: ListTile(
              leading: Text('${index+1}.'),
              title: Text(ashramRulesList[index]),
            ),
          ),

    );
  }
}