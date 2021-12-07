import 'package:clan_anime/UI/theme/constant.dart';
import 'package:flutter/material.dart';

class TxtFieldContainer extends StatelessWidget {
  final Widget child;
  // ignore: non_constant_identifier_names
  final double top_margin;
  const TxtFieldContainer({
    Key? key, 
    required this.child, 
    // ignore: non_constant_identifier_names
    required this.top_margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: top_margin),
      padding: const EdgeInsets.symmetric(horizontal: 15), 
      width: size.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(color: kTercearyColor),
        borderRadius: BorderRadius.circular(10)
      ),
      child: child,
    );
  }
}