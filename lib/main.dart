import 'package:clan_anime/UI/pages/states/states_screen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/domain/controllers/authentification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:clan_anime/UI/pages/log_in/login_screen.dart';
import 'package:clan_anime/UI/pages/sign_in/extrainfo_screen.dart';
import 'package:clan_anime/UI/pages/sign_in/user_screen.dart';
import 'package:clan_anime/UI/pages/sign_in/password_screen.dart';
import 'package:clan_anime/UI/pages/feed_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clan Anime',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}
