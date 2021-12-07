import 'package:clan_anime/UI/pages/states/states_screen.dart';
import 'package:clan_anime/UI/pages/states/users_states_screen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FeedBody extends StatelessWidget {
  const FeedBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    IconButton(
                      onPressed: () => Get.to(StateScreen(),
                          transition: Transition.downToUp),
                      icon: SvgPicture.asset(
                        "assets/icons/EstadoUser.svg",
                        semanticsLabel: 'messages',
                      ),
                      iconSize: 80,
                    ),
                    UserStatus(),
                  ]))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width,
            height: 180,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/locationot.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container()
        ]));
  }
}

class UserStatus extends StatelessWidget {
  const UserStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(UserStateScreen(), transition: Transition.zoom),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kPrimaryColor,
                  Colors.amber,
                ])),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              shape: BoxShape.circle,
              color: Colors.black,
              // image: DecorationImage(image: NetworkImage(profile),fit: BoxFit.cover)
            ),
          ),
        ),
      ),
    );
  }
}
