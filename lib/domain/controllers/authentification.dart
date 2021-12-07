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

  void registrar(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      String errMessage;
      switch (e) {
        case 'auth/email-already-in-use':
          errMessage = 'Este email ya ha sido utilizado.';
          break;
        case 'auth/invalid-email':
          errMessage = 'Correo inválido';
          break;
        default:
          errMessage =
              'Ha ocurrido un error al momento de registrar su usuario. Intentelo más tarde.';
          break;
      }
      Get.snackbar("About User", "User message",
          backgroundColor: kSecondaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Ocurrió un error al crear el usuario",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(errMessage, style: TextStyle(color: Colors.white)));
    }
  }

  void ingresar(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      String errMessage;
      switch (e) {
        case 'auth/user-disabled':
          errMessage = 'Este email ha sido deshabilitado.';
          break;
        case 'auth/invalid-email':
          errMessage = 'Correo inválido';
          break;
        case 'auth/user-not-found':
          errMessage = 'Correo erróneo';
          break;
        case 'auth/wrong-password':
          errMessage = 'Contraseña erróneo';
          break;
        default:
          errMessage =
              'Ha ocurrido un error al momento de registrar su usuario. Intentelo más tarde.';
          break;
      }
      Get.snackbar("About Login", "Login message",
          backgroundColor: kSecondaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Ocurrió un error al ingresar el usuario",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(errMessage, style: TextStyle(color: Colors.white)));
    }

    void logout() async {
      await auth.signOut();
    }
  }
}
