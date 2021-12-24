import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/large_button.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final emailCtrl = TextEditingController();
  Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    hintText: 'Correo Electrónico',
                    hintStyle: const TextStyle(color: kTercearyColor),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: kTercearyColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: kSecondaryColor),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: kPrimaryColor),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: kSecondaryColor),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'El Correo Electrónico es obligatorio';
                    } else if (!value.contains('@')) {
                      return 'El correo no cumple con las características';
                    }
                  },
                ),
              ),
              LargeButton(text: 'Recuperar', press: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
