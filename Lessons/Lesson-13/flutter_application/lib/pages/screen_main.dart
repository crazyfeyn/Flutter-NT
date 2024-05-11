import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenMainState();
  }
}

List<IconkaData> iconcalar = List.generate(
    5, (index) => IconkaData(iconka: Icons.star_border, color: Colors.black));

class _ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                iconcalar.length,
                (index) {
                  return IconButton(
                    onPressed: () {
                      setState(() {
                        for (var i = 0; i <= index; i++) {
                          iconcalar[i].color = Colors.red;
                        }
                      });
                    },
                    icon: Icon(
                      iconcalar[index].iconka,
                      color: iconcalar[index].color,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconkaData {
  IconData iconka;
  Color color;

  IconkaData({required this.iconka, required this.color});
}
