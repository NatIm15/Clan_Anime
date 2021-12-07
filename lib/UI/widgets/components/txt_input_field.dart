import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/txtfield_container.dart';
import 'package:flutter/material.dart';

class TxtInputField extends StatelessWidget {
  final double size;
  final String hintText;
  final ValueChanged<String> onChanged;

  const TxtInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TxtFieldContainer(
      top_margin: size,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: kTercearyColor),
        ),
      ),
    );
  }
}
