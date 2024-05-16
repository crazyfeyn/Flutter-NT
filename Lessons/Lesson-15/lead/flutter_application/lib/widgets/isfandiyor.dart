import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  var textController1 = TextEditingController();

  var textController2 = TextEditingController();

  String productName = '';

  String price = "";

  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: textController1,
              decoration: const InputDecoration(
                  label: Text("Product name"), border: OutlineInputBorder()),
            ),
            TextField(
              controller: textController2,
              decoration: const InputDecoration(
                  label: Text("Price"), border: OutlineInputBorder()),
            ),
            Text(
              errorMessage,
              style: const TextStyle(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                productName = textController1.text.trim();
                price = textController2.text.trim();
                if (productName.isEmpty || price.isEmpty) {
                  setState(() {
                    errorMessage = 'All forms must be filled!';
                  });
                } else {
                  errorMessage = '';
                  Navigator.pop(
                      context, {'title': productName, 'price': price});
                }
              },
              child: const Text("Save"),
            ),
          ],
        )
      ],
    );
  }
}
