import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
// import 'package:satsangapp/auth_controller.dart';
import 'package:satsangapp/screens/btm_bar.dart';
// import 'login_page.dart';
import 'provider/dark_theme_provider.dart';
import 'consts/theme_data.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
    await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    // Get.put(AuthController());
    super.initState();
    Future.delayed(const Duration(seconds: 0)).then((value) => {
      FlutterNativeSplash.remove()
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(builder: (context, themeProvider, child) {

        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Santmat Satsang',
            theme: Styles.themeData(themeProvider.getDarkTheme, context),
            home: const BottomBarScreen());
      }),
    );
  }
}