import 'package:clan_anime/UI/pages/log_in/login_screen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  //Incluye la info del usuario
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
  }

  String userEmail() {
    String email = FirebaseAuth.instance.currentUser!.email ?? 'a@a.com';
    return email;
  }

  String userID() {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    return uid;
  }

  void register(String email, password) {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User message",
          backgroundColor: kSecondaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account creation failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText:
              Text(e.toString(), style: TextStyle(color: Colors.white)));
    }
  }
}
