import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:no_internet_check/internet_connectivity/initialize_internet_checker.dart';
import 'package:no_internet_check/internet_connectivity/navigation_Service.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:satsangapp/screens/btm_bar.dart';
import 'provider/dark_theme_provider.dart';
import 'consts/theme_data.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

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
    InternetChecker(); //TODO: ADD THIS LINE

    disableCapture();
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
            navigatorKey: NavigationService.navigationKey, //TODO: ADD THIS LINE
            home: const BottomBarScreen());

      }),
    );
  }

  Future<void> disableCapture() async {
    //disable screenshots and record screen in current screen
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }
}