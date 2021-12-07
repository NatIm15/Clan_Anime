import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/txtfield_container.dart';
import 'package:flutter/material.dart';

class PWordInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PWordInputField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TxtFieldContainer(
      top_margin: 15,
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Contraseña',
            hintStyle: TextStyle(color: kTercearyColor),
            suffixIcon: Icon(
              Icons.visibility,
              color: kTercearyColor,
            )),
      ),
    );
  }
}
