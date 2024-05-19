import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InitialClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF212832),
        body: Center(
          child: SvgPicture.asset("assets/icons/recipeIt.svg",
              width: 250),
        ));
  }
}
