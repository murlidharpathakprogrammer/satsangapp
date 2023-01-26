import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:satsangapp/auth_controller.dart';
import 'package:satsangapp/screens/privacyPolicy.dart';
import 'package:satsangapp/screens/tocScreen.dart';
import '../provider/dark_theme_provider.dart';
import '../widgets/text_widget.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final TextEditingController _addressTextController =
  TextEditingController(text: "");

  @override
  void dispose() {
    _addressTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
        appBar: AppBar(title: const Text("संतमत सत्संग"), backgroundColor: Colors.orange,),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'नमस्ते ',
                        style: const TextStyle(
                          color: Colors.cyan,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' मेरा नाम !',
                              style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  stdout.write('My name is pressed');
                                }),
                        ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    text: 'user@email.com',
                    color: color,
                    textSize: 18,
                    // isTitle: true,
                    // title,
                    // style: TextStyle(fontSize: title =='Logout'? 20 : 15, fontWeight: title =='Logout'? FontWeight.bold : FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // _listTiles(
                  //     title: 'Address',
                  //     subtitle: 'Update my address',
                  //     icon: IconlyLight.location,
                  //     onPressed: () async{
                  //       await _showAddressDialog();
                  //     },
                  //     color: color
                  // ),


                  SwitchListTile(
                    title: TextWidget(
                      text: 'Dark mode',
                      color: color,
                      textSize: 20,
                      // isTitle: true,
                      // title,
                      // style: TextStyle(fontSize: title =='Logout'? 20 : 15, fontWeight: title =='Logout'? FontWeight.bold : FontWeight.normal),
                    ),
                    secondary: Icon(themeState.getDarkTheme
                        ? Icons.dark_mode_outlined
                        : Icons.light_mode_outlined),
                    onChanged: (bool value) {
                      setState(() {
                        themeState.setDarkTheme = value;
                      });
                    },
                    value: themeState.getDarkTheme,
                  ),

                  // Privacy Policy
                  _listTiles(
                      title: 'Privacy Policy',
                      color: color,
                      // subtitle: 'My subtitle',
                      icon: Icons.privacy_tip,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PrivacyPolicy()),
                      );
                    },),

                  // TOC
                  _listTiles(
                    title: 'Terms and Conditions',
                    color: color,
                    // subtitle: 'Terms and Conditions',
                    icon: Icons.list,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TocScreen()),
                      );
                    },
                  ),

                  // Forgot Password
                  // _listTiles(
                  //   title: 'Forgot Password',
                  //   color: color,
                  //   // subtitle: 'Terms and Conditions',
                  //   icon: IconlyLight.password,
                  //   onPressed: () {
                  //     // _showLogoutDialog();
                  //   },
                  // ),

                  // Logout
                  _listTiles(
                    title: 'Logout',
                    color: color,
                    icon: Icons.logout,
                    onPressed: () {
                      _showLogoutDialog();
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Future<void> _showLogoutDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(children: [
              Image.asset(
                'assets/images/icons8-logout-100 (1).png',
                height: 20,
                width: 20,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text('  Sign out')
            ]),
            content: const Text('Do you want to sign out ?'),
            actions: [
              TextButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: TextWidget(
                  color: Colors.cyan,
                  text: 'Cancel',
                  textSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {
                  AuthController.instance.logOut();
                },
                child: TextWidget(
                  color: Colors.red,
                  text: 'OK',
                  textSize: 18,
                ),
              ),
            ],
          );
        });
  }

  Future <void> _showAddressDialog() async {
    await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Update'),
        content: TextField(
          // onChanged: (value){
          //   // _addressTextController.text;
          //   print('_addressTextController.text ${_addressTextController.text}');
          // },
          controller: _addressTextController,
          maxLines: 5,
          decoration: const InputDecoration(hintText: "Your address"),
        ),
        actions: [
          TextButton(
              onPressed: () {

              },
              child: const Text('Update')
          ),
        ],
      );
    });
  }

  Widget _listTiles({
    required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
    required Color color,
  }) {
    return ListTile(
      title: TextWidget(
        text: title,
        color: color,
        textSize: 20,
      ),
      subtitle: Text(subtitle == null ? "" : subtitle),
      leading: Icon(icon),
      trailing: Icon(title == 'Logout'
          ? IconlyLight.arrow_right_circle
          : IconlyLight.arrow_right_2),
      onTap: () {
        onPressed();
      },
    );
  }
}