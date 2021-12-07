import 'package:clan_anime/UI/pages/log_in/login_screen.dart';
import 'package:clan_anime/UI/pages/sign_in/password_screen.dart';
import 'package:clan_anime/UI/widgets/components/bottom_links.dart';
import 'package:clan_anime/UI/widgets/components/next_text.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_field.dart';
import 'package:clan_anime/UI/widgets/sing_in/d_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInput extends StatelessWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        text: 'Crea un Usuario',
        input: TxtInputField(
            size: 15, hintText: 'Nombre de Usuario', onChanged: (value) {}),
      ),
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
        tap: () {
          Get.to(() => PWordInput());
        },
      ),
    );
  }
}
