import 'package:clan_anime/UI/pages/log_in/login_screen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/login/body_recuperar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecuperarScreen extends StatelessWidget {
  const RecuperarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left_rounded,
          color: kSecondaryColor,
          size: 35,
        ),
        onPressed: () {
          Get.off(() => LoginScreen());
        },
      ),
    );
  }
}
