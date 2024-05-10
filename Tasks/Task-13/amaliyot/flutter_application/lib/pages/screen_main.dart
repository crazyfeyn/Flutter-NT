import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/models.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  List<Product> scriptsName = [
    Product(name: "Basket"),
    Product(name: "Fries"),
    Product(name: "Burrito"),
    Product(name: "Taco"),
    Product(name: "Pizza"),
  ];
  List<Product> basket = [];

  @override
  Widget build(BuildContext context) {
    void toggleRemove(Product item) {
      setState(() {
        scriptsName.remove(item);
        basket.add(item);
      });
    }

    void toggleAddAgain(Product item) {
      setState(() {
        basket.remove(item);
        scriptsName.add(item);
      });
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 100),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 5,
              children: scriptsName
                  .map((item) => InkWell(
                        child: Chip(
                          label: Text(item.name),
                          avatar: Image.asset("assets/images/burger.png"),
                        ),
                        onTap: () => toggleRemove(item),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 30),
            basket.isNotEmpty ? const Divider() : Container(),
            Wrap(
              spacing: 10,
              runSpacing: 5,
              children: basket
                  .map((item) => Chip(
                        label: Text(item.name),
                        avatar: Image.asset("assets/images/burger.png"),
                        deleteIcon: const Icon(
                          CupertinoIcons.xmark_circle_fill,
                          color: Colors.red,
                          size: 22,
                        ),
                        onDeleted: () => toggleAddAgain(item),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
