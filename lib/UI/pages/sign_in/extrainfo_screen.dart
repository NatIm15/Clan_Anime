import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/next_text.dart';
import 'package:clan_anime/UI/widgets/sing_in/e_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoInput extends StatelessWidget {
  const UserInfoInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyE(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Next(msg: 'listo', tap: () {}),
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
