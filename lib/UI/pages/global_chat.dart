import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalChatScreen extends StatelessWidget {
  const GlobalChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: BottomChat(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left_rounded,
          color: Colors.white,
          size: 35,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      title: Container(
          alignment: Alignment.centerLeft,
          child: Text('Chat Global',
              style: GoogleFonts.salsa(color: Colors.white, fontSize: 35))
          // Row(
          //   children: [
          //     Container(
          //       height: 45,
          //       width: 45,
          //       decoration: const BoxDecoration(
          //         color: Colors.black,
          //         shape: BoxShape.circle,
          //         // image: DecorationImage(
          //         //   image: AssetImage('assets/images/locationot.png'),
          //         //   fit: BoxFit.fill,
          //         // ),
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}

class BottomChat extends StatelessWidget {
  const BottomChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: TextField(),
        ),
      ],
    );
  }
}
