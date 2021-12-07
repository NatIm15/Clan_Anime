import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/feed/nav_bar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        home: '',
        community: '',
        person: '_filled',
      ),
    );
  }
}
