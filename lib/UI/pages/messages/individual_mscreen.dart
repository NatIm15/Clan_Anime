import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class IndividualMessage extends StatelessWidget {
  const IndividualMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMessageAppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () => null,
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.mail_rounded,
            size: 30,
          )),
    );
  }

  AppBar buildMessageAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left_rounded,
          color: Colors.black,
          size: 35,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      title: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Text(
          'Chat',
          style: GoogleFonts.raleway(
              color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
