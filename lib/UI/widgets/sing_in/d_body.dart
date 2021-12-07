import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final String text;
  final Widget input;

  const Body({
    Key? key,
    required this.text,
    required this.input,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: GoogleFonts.salsa(color: kPrimaryColor, fontSize: 29),
            ),
            input,
          ],
        ),
      ),
    );
  }
}
