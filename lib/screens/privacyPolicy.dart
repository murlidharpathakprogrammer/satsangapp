import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
// import 'package:satsangapp/auth_controller.dart';
import '../lists/tocLists.dart';
import '../provider/dark_theme_provider.dart';
// import '../widgets/text_widget.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Privacy policy"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 750,
                            child: const Text(
                              "Our app, Santmat Satsang, values the privacy of our users. We collect and use user email addresses solely for the purpose of registration and login. We will not share or sell any user email addresses to any third parties. We take appropriate security measures to protect user information, including email addresses, from unauthorized access, disclosure, alteration or destruction. By using our app, you consent to our collection and use of your email address for registration and login purposes. If you have any questions or concerns about our privacy policy, please contact us.", textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 15,),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
