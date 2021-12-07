import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;

  const LargeButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: GoogleFonts.salsa(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(size.width * 0.8, 40),
          primary: color,
        ),
      ),
    );
  }
}
