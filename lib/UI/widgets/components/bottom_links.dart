import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottom extends StatelessWidget {
  final String text;
  final String link;
  final VoidCallback tap;

  const Bottom({
    Key? key,
    required this.text,
    required this.link,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      padding: EdgeInsets.only(bottom: 40),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text + ' ',
            style: GoogleFonts.raleway(color: Colors.black),
          ),
          TextButton(
            onPressed: tap,
            child: Text(
              link,
              style: GoogleFonts.raleway(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
          )
        ],
      ),
    );
  }
}
