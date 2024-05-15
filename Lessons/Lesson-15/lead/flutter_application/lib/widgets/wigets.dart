import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/utils.dart';

class TopLogic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopLogicState();
}

class _TopLogicState extends State<TopLogic> {
  int index = 0;
  late DateTime showDate;
  late String sana;

  @override
  void initState() {
    super.initState();
    showDate = DateTime.now();
    sana = "${showDate.month}.${showDate.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () async {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: showDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            );
            if (pickedDate != null) {
              setState(() {
                showDate = pickedDate;
                sana = "${showDate.month}.${showDate.year}";
              });
            }
          },
          child: Text(
            "${monthByNumber(sortedFunc()[index]['dataTime'].month)}, ${sortedFunc()[index]['dataTime'].year}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (index > 0) {
                      index--;
                    }
                  });
                },
                icon: const Icon(CupertinoIcons.back)),
            Text(
              "${dataQolip[index]["sped_money"]}",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    if (index < dataQolip.length - 1) index++;
                  });
                },
                icon: Icon(CupertinoIcons.forward)),
          ],
        )
      ],
    );
  }
}
