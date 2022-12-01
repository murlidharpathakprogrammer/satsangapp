// import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';
import 'package:satsangapp/signup_page.dart';
import 'package:satsangapp/widgets/text_widget.dart';

import 'auth_controller.dart';
// import 'package:satsang/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final isKeyBoard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: isKeyBoard ? h * 0.0 : h * 0.2,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  "assets/images/pictures/Picsart_22-10-20_22-31-34-089.png"),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            margin: EdgeInsets.only(
                left: 20, top: isKeyBoard ? h * 0.06 : 0, right: 20),
            width: w,
            height: isKeyBoard? 0.35*h : 0.6 * h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                !isKeyBoard? Text(
                  "नमस्ते",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[800],
                  ),
                ): Center(child: TextWidget(text: "Log in", color: Colors.orange, textSize: 25)),

                !isKeyBoard? Text(
                  "Sign into your account",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500],
                  )
                ): const SizedBox(height: 0,),
                SizedBox(
                  height: isKeyBoard ? 15 : 30,
                ),
                Container(
                  height: h*0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    cursorColor: Colors.orangeAccent,
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.orangeAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.black26,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    style: const TextStyle(color: Colors.green),
                  ),
                ),
                SizedBox(
                  height: h*0.02,
                ),
                Container(
                  height: h*0.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    cursorColor: Colors.orangeAccent,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.orangeAccent,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.black26,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    style: const TextStyle(color: Colors.green),
                  ),
                ),
                !isKeyBoard? SizedBox(
                  height:  h * 0.02,
                ): const SizedBox(height: 0,),
                Row(
                  children: [
                    !isKeyBoard? Expanded(
                      child: Container(),
                    ): const SizedBox(height: 0,),
                    !isKeyBoard? Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500],
                      ),
                    ): const SizedBox(height: 0,),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: isKeyBoard ? 0 : h * 0.02,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.login(
                  emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/pictures/login3.jpg"),
                    fit: BoxFit.cover,
                  )),
              child: const Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),

                ),
              ),
            ),
          ),
          !isKeyBoard? SizedBox(
            height: h * 0.02,
          ): const SizedBox(height: 0,),
          if (!isKeyBoard)
            RichText(
                text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.grey[500], fontSize: 20),
                    children: [
                  TextSpan(
                    text: " Create",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => const SignUpPage()),
                  )
                ])
            )
        ],
      ),
    );
  }
}
