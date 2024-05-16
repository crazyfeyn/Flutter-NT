import 'package:flutter/material.dart';
import 'package:flutter_application/models/expense.dart';
import 'package:flutter_application/utils/tools.dart';
import 'package:flutter_application/utils/utils.dart';
import 'package:flutter_application/widgets/isfandiyor.dart';
import 'package:flutter_application/widgets/wigets.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  final expensesManager = ExpensesManager();
  Map<String, dynamic> data = {};

  int index = 0;
  DateTime dateTime = DateTime.now();
  DateTime? showDate;
  String sanaRec = '';

  void updateIndex(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  void updateSana(String sana) {
    setState(() {
      sanaRec = sana;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Mening Hamyonim',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              data = await showDialog(
                context: context,
                builder: (context) => MyDialog(),
              );

              // List<String> sanaSplitted = sanaRec.split(".");
              // for (var i in dataQolip) {
              //   if (i["dataTime"] ==
              //       DateTime.parse("${sanaSplitted[1]}-${sanaSplitted[0]}-01")) {
              //     print("true");
              //   }
              // }
              //!here take care about it later
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TopLogic(
                    updateIndex: updateIndex,
                    currentIndex: index,
                    updateSana: updateSana),
                shokhtimeCode(),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 300,
                  child: SingleChildScrollView(
                    child: 
                    Column(
                        // children: expensesManager
                        //             .getByMonth(DateTime(2024, 03))
                        //             .length >
                        //         0
                        //     ? [
                        //         for (var i = 0;
                        //             i <
                        //                 expensesManager
                        //                     .getByMonth(DateTime(2024, 03))
                        //                     .length;
                        //             i++)
                        //           ListTile(
                        //             title: Text(expensesManager.list[i].title),
                        //             subtitle: Text(
                        //               expensesManager.list[i].date.toString(),
                        //             ),
                        //           )
                        //       ]
                        //     : [Text("Hech narsa yo'q")]
                        children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (int i = 0;
                                    i <
                                        dataQolip[index]['product'][0]['title']
                                            .length;
                                    i++)
                                  Text(
                                    "${dataQolip[index]['product'][0]['title'][i]}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                              ],
                            ),
                            Text(
                              "${dataQolip[index]['dataTime'].year} - ${monthByNumber(dataQolip[index]['dataTime'].month)}",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "${dataQolip[index]['sped_money']}",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                        ]
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget shokhtimeCode() {
    double moneyMuch = 100000000;
    int number = dataQolip[index]["sped_money"];
    double blueContainerWidth = (number * 100) / moneyMuch;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 360,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color(0xfff0f0fc),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text("Oylik byudjet:"),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                    size: 18,
                                  ),
                                ),
                                Text(
                                  "$moneyMuch so'm",
                                  style: const TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            Text("${(number * 100) / moneyMuch} %"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              width: blueContainerWidth * 3,
                              height: 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              width: 300 - (blueContainerWidth * 3),
                              height: 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 204, 202, 202),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
