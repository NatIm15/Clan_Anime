import 'package:clan_anime/UI/pages/sign_in/user_screen.dart';
import 'package:clan_anime/UI/widgets/login/body.dart';
import 'package:clan_anime/UI/widgets/components/bottom_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      bottomNavigationBar: Bottom(
        text: 'Aún no estas registrado?',
        link: 'Registrate',
        tap: () {
          Get.off(() => UserInput());
        },
      ),
    );
  }
}
