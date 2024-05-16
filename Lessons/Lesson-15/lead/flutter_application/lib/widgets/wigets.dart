import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/utils.dart';

class TopLogic extends StatefulWidget {
  final Function(int) updateIndex;
  final int currentIndex;
  final Function(String) updateSana;

  const TopLogic(
      {required this.updateIndex,
      required this.currentIndex,
      required this.updateSana});

  @override
  State<StatefulWidget> createState() => _TopLogicState();
}

class _TopLogicState extends State<TopLogic> {
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
                widget.updateSana(sana);
              });
            }
          },
          child: Text(
            "${monthByNumber(sortedFunc()[widget.currentIndex]['dataTime'].month)}, ${sortedFunc()[widget.currentIndex]['dataTime'].year}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                if (widget.currentIndex > 0) {
                  widget.updateIndex(widget.currentIndex - 1);
                }
              },
              icon: const Icon(CupertinoIcons.back),
            ),
            Text(
              "${dataQolip[widget.currentIndex]["sped_money"]}",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
            IconButton(
              onPressed: () {
                if (widget.currentIndex < dataQolip.length - 1) {
                  widget.updateIndex(widget.currentIndex + 1);
                }
              },
              icon: const Icon(CupertinoIcons.forward),
            ),
          ],
        )
      ],
    );
  }
}
