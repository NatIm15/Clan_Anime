import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/large_button.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(bottom: 70),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Recuperar Contraseña',
                style: GoogleFonts.salsa(color: kPrimaryColor, fontSize: 29),
              ),
              Text(
                'Ingresa tu correo electrónico y en breve, se te serán enviados los pasos para recuperar tu contraseña',
                style: GoogleFonts.raleway(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              TxtInputField(
                  hintText: 'Correo Electrónico',
                  onChanged: (value) {},
                  size: 10),
              LargeButton(text: 'Recuperar', press: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
