import 'package:clan_anime/UI/pages/feed_screen.dart';
import 'package:clan_anime/UI/pages/log_in/recuperarpword_screen.dart';
import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/large_button.dart';
import 'package:clan_anime/UI/widgets/components/pword_input_field.dart';
import 'package:clan_anime/UI/widgets/components/txt_input_field.dart';
import 'package:clan_anime/UI/widgets/components/txtfield_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/icons/Logo.svg",
              color: kPrimaryColor,
              semanticsLabel: 'Logo',
              height: 132,
              width: 132,
            ),
            const Text(
              'clan anime',
              style: TextStyle(
                color: kPrimaryColor,
                fontFamily: 'MainFont',
                fontSize: 37,
              ),
            ),
            TxtFieldContainer(
              top_margin: 49,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Correo Electrónico',
                  hintStyle: TextStyle(color: kTercearyColor),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'El Correo Electrónico es obligatorio';
                  } else if (!value.contains('@')) {
                    return 'El Correo Electrónico no cumple con las características';
                  }
                },
              ),
            ),
            TxtFieldContainer(
              top_margin: 15,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(color: kTercearyColor),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: kTercearyColor,
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
            Container(
              width: size.width * 0.8,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text(
                  'Olvidaste tu Contraseña?',
                  style: TextStyle(color: kSecondaryColor),
                ),
                onPressed: () => Get.to(() => RecuperarScreen()),
              ),
            ),
            LargeButton(
                text: 'Ingresar',
                press: () => Get.offAll(
                      () => FeedScreen(),
                    )),
          ],
        ),
      ),
    );
  }
}
