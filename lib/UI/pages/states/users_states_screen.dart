import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/txtfield_container.dart';
import 'package:clan_anime/UI/widgets/feed/body_home.dart';
import 'package:clan_anime/domain/controllers/_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserStateScreen extends StatelessWidget {
  final Color blue = Colors.blue.shade300;

  UserStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      appBar: buildAppStateBar(),
      body: BodyState(),
      bottomNavigationBar: PostButton(),
    );
  }

  PreferredSize buildAppStateBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () => Get.close(1),
                icon: const Icon(
                  Icons.close_rounded,
                  size: 40,
                )),
          ),
        ],
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 40, left: 20),
          child: GestureDetector(
            child: Row(
              children: [
                Container(
                  width: 68,
                  height: 68,
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
                      width: 63,
                      height: 63,
                      decoration: BoxDecoration(
                        border: Border.all(color: blue, width: 3),
                        shape: BoxShape.circle,
                        color: Colors.black,
                        // image: DecorationImage(image: NetworkImage(profile),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'BabyGurl2021',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        '1:21 PM',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostButton extends StatelessWidget {
  const PostButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 90,
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TxtFieldContainer(
              top_margin: 0,
              child: TextFormField(
                style: TextStyle(color: kTercearyColor),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Reply',
                    hintStyle: TextStyle(color: kTercearyColor)),
              )),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.send_rounded),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class BodyState extends StatelessWidget {
  const BodyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, right: 20, bottom: 0, left: 20),
      child: Center(
          child: Text(
        'Hola',
        style: GoogleFonts.salsa(fontSize: 40, color: Colors.white),
      )),
    );
  }
}
