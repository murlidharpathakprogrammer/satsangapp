import 'package:flutter/material.dart';

class TocListWidget extends StatelessWidget{
  const TocListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    List<String> tocList = [
      'Eligibility: Our mobile application is intended for use by individuals who are at least 13 years of age. By using our app, you represent and warrant that you meet this age requirement.',
      'Email Address: In order to use our mobile application, you are required to provide a valid email address. We will use this email address to create your account and for login purposes.ं',
      'Privacy: Our app values the privacy of our users. Our Privacy Policy, which is incorporated into these terms, explains how we collect, use, and disclose personal information.ै',
      'Intellectual Property: All content and materials available on our mobile application, including but not limited to text, graphics, logos, images, and software, are protected by copyright, trademark, and other intellectual property laws.',
      'Disclaimer of Warranties: Our mobile application is provided "as is" and "as available" without warranty of any kind, either express or implied, including but not limited to, the implied warranties of merchantability, fitness for a particular purpose, or non-infringement.',
      'Limitation of Liability: In no event shall we be liable for any damages whatsoever, including but not limited to, direct, indirect, special, incidental, or consequential damages, arising out of or in connection with the use of our mobile application.',
      'Changes to the Terms: We reserve the right, at our sole discretion, to change or modify these terms at any time. Any changes or modifications will be effective immediately upon posting the revisions to our mobile application.',
      'Contact Us: If you have any questions about these terms or our mobile application, please contact us.',
    ];
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tocList.length,
      itemBuilder: (context, int index) =>
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: ListTile(
              leading: Text('${index+1}.'),
              title: Text(tocList[index], textAlign: TextAlign.justify,),
            ),
          ),

    );
  }
}