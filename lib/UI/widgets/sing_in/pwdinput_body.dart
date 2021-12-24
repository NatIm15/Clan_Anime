import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/domain/controllers/_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PwdInputBody extends StatelessWidget {
  final passwordCtrl = TextEditingController();
  final Key? formKey;

  PwdInputBody({Key? key, this.formKey}) : super(key: key);

  HiddenPassword _ctrl = HiddenPassword();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<HiddenPassword>(
        init: _ctrl,
        builder: (_) => Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Crea una Contraseña',
                    style:
                        GoogleFonts.salsa(color: kPrimaryColor, fontSize: 29),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: size.width * 0.8,
                    child: TextFormField(
                      obscureText: _.isHidden,
                      controller: passwordCtrl,
                      decoration: InputDecoration(
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(color: kTercearyColor),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 18),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: kTercearyColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: kSecondaryColor),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: kPrimaryColor),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: kSecondaryColor),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () => _ctrl.changeHidden(),
                            child: Icon(
                              _.isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: kTercearyColor,
                            ),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'La contraseña es obligatorio';
                        } else if (value.length < 8) {
                          return 'La contraseña debe ser mayor o igual a 8 caractéres';
                        }
                      },
                    ),
                  ),
                ],
              ),
            ));
  }
}
