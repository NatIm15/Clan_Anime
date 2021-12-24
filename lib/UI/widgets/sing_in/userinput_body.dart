import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInputBody extends StatelessWidget {
  final userCtrl = TextEditingController();
  final Key? formKey;

  UserInputBody({Key? key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'Digita tu Nombre',
            style: GoogleFonts.salsa(color: kPrimaryColor, fontSize: 29),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: size.width * 0.8,
            child: TextFormField(
              key: formKey,
              controller: userCtrl,
              decoration: InputDecoration(
                hintText: 'Nombre Completo',
                hintStyle: const TextStyle(color: kTercearyColor),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18),
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
                  return 'Crear un usuario es obligatorio';
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
