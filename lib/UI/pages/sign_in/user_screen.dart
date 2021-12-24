import 'package:clan_anime/UI/pages/log_in/login_screen.dart';
import 'package:clan_anime/UI/pages/sign_in/password_screen.dart';
import 'package:clan_anime/UI/widgets/components/bottom_links.dart';
import 'package:clan_anime/UI/widgets/components/next_text.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_field.dart';
import 'package:clan_anime/UI/widgets/sing_in/pwdinput_body.dart';
import 'package:clan_anime/UI/widgets/sing_in/userinput_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserInputBody(
        formKey: formKey,
      ),
      appBar: buildAppBar(),
      bottomNavigationBar: Bottom(
        text: 'Ya estas registrado?',
        link: 'Ingresa',
        tap: () {
          Get.to(() => LoginScreen());
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Next(
        msg: 'siguiente',
        tap: () {
          Get.to(() => PWordInput());
        },
      ),
    );
  }
}
