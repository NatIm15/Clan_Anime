import 'package:clan_anime/UI/pages/log_in/login_screen.dart';
import 'package:clan_anime/UI/pages/sign_in/extrainfo_screen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/bottom_links.dart';
import 'package:clan_anime/UI/widgets/components/next_text.dart';
import 'package:clan_anime/UI/widgets/sing_in/pwdinput_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PWordInput extends StatelessWidget {
  const PWordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: PwdInputBody(),
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
            Get.to(() => UserInfoInput());
          }),
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left_rounded,
          color: kSecondaryColor,
          size: 35,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
