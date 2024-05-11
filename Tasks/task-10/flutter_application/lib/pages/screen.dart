import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/functions.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: sWidth > 600 ? deskAppbar() : phoneAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            sWidth<600?phoneAppbarCon(sWidth):const SizedBox(height: 20),
            sWidth>600?desk(sWidth):phone(sWidth)
          ],
        ),
      ),
    );
  }
}