import 'package:clan_anime/UI/pages/feed_screen.dart';
import 'package:clan_anime/UI/pages/global_chat.dart';
import 'package:clan_anime/UI/pages/search_screen.dart';
import 'package:clan_anime/UI/pages/userinfo/userinfo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  final String home;
  final String community;
  final String person;

  const NavBar({
    Key? key,
    required this.home,
    required this.community,
    required this.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () => Get.off(() => FeedScreen(),
                    transition: Transition.noTransition),
                icon: SvgPicture.asset('assets/icons/home$home.svg'),
                iconSize: 50,
              ),
              IconButton(
                onPressed: () => Get.off(() => SearchScreen(),
                    transition: Transition.noTransition),
                icon: SvgPicture.asset('assets/icons/community$community.svg'),
                iconSize: 50,
              ),
              IconButton(
                onPressed: () => Get.to(() => GlobalChatScreen(),
                    transition: Transition.fadeIn),
                icon: SvgPicture.asset('assets/icons/world.svg'),
                iconSize: 50,
              ),
              IconButton(
                onPressed: () => Get.off(() => InfoScreen(),
                    transition: Transition.noTransition),
                icon: SvgPicture.asset('assets/icons/person$person.svg'),
                iconSize: 50,
              ),
            ]),
      ),
    );
  }
}
