import 'package:clan_anime/UI/pages/messages/individual_mscreen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/feed/body_home.dart';
import 'package:clan_anime/UI/widgets/feed/nav_bar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: FeedBody(),
      floatingActionButton: Post(),
      bottomNavigationBar: NavBar(
        home: '_filled',
        community: '',
        person: '',
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 4.0),
            child: Text(
              'clan anime',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'MainFont', fontSize: 32),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Get.to(() => IndividualMessage(), transition: Transition.native);
            },
            icon: SvgPicture.asset(
              "assets/icons/MessageIcon.svg",
              semanticsLabel: 'messages',
            ),
            iconSize: 38,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => Get.to(() => null),
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add_rounded,
          size: 30,
        ));
  }
}
