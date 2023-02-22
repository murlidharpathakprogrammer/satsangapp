import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:satsangapp/widgets/privacyWidget.dart';
import 'package:url_launcher/url_launcher.dart';
class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    // String url =
    //     "https://github.com/murlidharpathakprogrammer/ss/blob/main/privacy-policy.md";
    // final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Privacy policy"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PrivacyWidget(),
            Column(
              children: [
                const Center(
                  child: Icon(Icons.arrow_downward_rounded),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "Privacy Policy here",
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            var url =
                                'https://raw.githubusercontent.com/murlidharpathakprogrammer/ss/main/privacy-policy.md';
                            var uri = Uri.parse(url);
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            } else {
                              throw 'Could not launch $uri';
                            }
                          },
                      ),
                    ])),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
