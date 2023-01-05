import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:satsangapp/signup_page.dart';
import 'auth_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Key k1 = GlobalKey();
  Key k2 = GlobalKey();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final isKeyBoard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 5,
              child: Image.asset(
                  "assets/images/pictures/Picsart_22-10-20_22-31-34-089.png",
                  fit: BoxFit.cover),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "नमस्ते",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[800],
                            ),
                          ),
                          Text("अपने अकाउंट में लॉगिन करें",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[500],
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            // height: h*0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      offset: const Offset(0, 1),
                                      color: Colors.orange.withOpacity(1))
                                ]),
                            child: TextField(
                              cursorColor: Colors.orangeAccent,
                              controller: emailController,
                              key: k1,
                              decoration: InputDecoration(
                                  hintText: "ई-मेल",
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.orangeAccent,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
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
                              style: const TextStyle(color: Colors.brown),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Container(
                            // height: h*0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                      offset: const Offset(0, 1),
                                      color: Colors.orange.withOpacity(1))
                                ]),
                            child: TextField(
                              cursorColor: Colors.orangeAccent,
                              controller: passwordController,
                              obscureText: true,
                              key: k2,
                              decoration: InputDecoration(
                                  hintText: "पासवर्ड",
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  prefixIcon: const Icon(
                                    Icons.password,
                                    color: Colors.orangeAccent,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
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
                              style: const TextStyle(color: Colors.brown),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0, right: 8),
                            child: Row(
                              children: [
                                !isKeyBoard
                                    ? Expanded(
                                        child: Container(),
                                      )
                                    : const SizedBox(
                                        height: 0,
                                      ),
                                !isKeyBoard
                                    ? Text(
                                        "क्या आप पासवर्ड भूल गए ?",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey[500],
                                        ),
                                      )
                                    : const SizedBox(
                                        height: 0,
                                      ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
                  child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                  onTap: () {
                    AuthController.instance.login(emailController.text.trim(),
                        passwordController.text.trim());
                  },
                  borderRadius: BorderRadius.circular(30),
                  // highlightColor: Colors.blue.withOpacity(1),
                  splashColor: Colors.black,
                  child: Container(
                    width: w * 0.5,
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromRGBO(
                          255, 172, 18, 0.8941176470588236)
                    ),
                    child: const Center(
                      child: Text(
                        "लॉगिन",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: RichText(
                  text: TextSpan(
                      text: "क्या आप अकाउंट बनाना चाहते हैं?",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20),
                      children: [
                    TextSpan(
                      text: " यहाँ बनायें ",
                      style: const TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const SignUpPage()),
                    )
                  ])),
            ),
          ],
        ),
      ),
      
    );
  }
}