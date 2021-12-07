import 'package:clan_anime/UI/theme/constant.dart';
import 'package:clan_anime/UI/widgets/components/txtfield_container.dart';
import 'package:flutter/material.dart';

class TxtAreaInput extends StatelessWidget {
  const TxtAreaInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TxtFieldContainer(
      child: TextFormField(
        minLines: 1,
        maxLines: null,
        maxLength: 100,
        keyboardType: TextInputType.multiline,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Descripción',
          hintStyle: TextStyle(color: kTercearyColor),
        ),
      ),
      top_margin: 10,
    );
  }
}
