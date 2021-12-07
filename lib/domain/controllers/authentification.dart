import 'package:firebase_auth/firebase_auth.dart';
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

  Future<void> registrar(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      String errMessage;
      switch (e.code) {
        case 'email-already-in-use':
          errMessage = 'Este email ya ha sido utilizado.';
          break;
        case 'invalid-email':
          errMessage = 'Correo inválido';
          break;
        default:
          errMessage =
              'Ha ocurrido un error al momento de registrar su usuario. Intentelo más tarde.';
          break;
      }
      return Future.error(errMessage);
    }
  }

  Future<void> ingresar(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      String errMessage;
      switch (e.code) {
        case 'user-disabled':
          errMessage = 'Este email ha sido deshabilitado.';
          break;
        case 'invalid-email':
          errMessage = 'Correo inválido';
          break;
        case 'user-not-found':
          errMessage = 'Correo erróneo';
          break;
        case 'wrong-password':
          errMessage = 'Contraseña erróneo';
          break;
        default:
          errMessage = e.code;
          break;
      }
      return Future.error(errMessage);
    }

    void logout() async {
      try {
        await auth.signOut();
      } catch (e) {
        return Future.error(e.toString());
      }
    }
  }
}
