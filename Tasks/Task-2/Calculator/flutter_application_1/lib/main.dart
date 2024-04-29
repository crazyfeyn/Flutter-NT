import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                  width: 300,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "345 + (35*3)",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "=",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "450",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Sin",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black45,
                                ),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Cos",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black45,
                                ),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Tan",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black45,
                                ),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Log",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black45,
                                ),
                              )),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "{",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black45,
                            ),
                          )),
                      const SizedBox(
                        width: 13,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "}",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black45,
                            ),
                          )),
                      const SizedBox(
                        width: 13,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "/",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black45,
                            ),
                          )),
                      const SizedBox(
                        width: 13,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "%",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black45,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "2",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "3",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "X",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "4",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "5",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "6",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "*",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "7",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "8",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "-",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            ".",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.cancel,
                          size: 30,
                          color: Color.fromARGB(255, 59, 255, 203),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "+",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 300,
                    alignment: Alignment.center,
                    child: const Text("=",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
