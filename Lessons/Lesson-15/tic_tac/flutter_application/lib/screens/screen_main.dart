import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets_all.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenMain();
  }
}

class _ScreenMain extends State<ScreenMain> {
  int tries = -1;
  bool isDraw = false;
  bool flag = true;
  int playerX = 0;
  int playerO = 0;
  int scoreX = 0;
  int scoreO = 0;
  bool turnBot = false;
  bool turnMe = false;
  String currentPlayer = '';
  String botPlayer = '';
  int index = 0;
  bool winnerHave = false;
  List board = List.generate(9, (index) => "");
  List<List<int>> winningConditions = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 198, 150, 133),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              if (flag) choice(),
              const SizedBox(height: 20),
              line(),
              const SizedBox(height: 50),

//----------------------//----------------------//----------------------//-------------------------
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      rowOne(0, 1, 2),
                      bottomLine(),
                      rowOne(3, 4, 5),
                      bottomLine(),
                      rowOne(6, 7, 8),
                      if (tries >= 9) drawFunc(),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "X - $scoreX",
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "O - $scoreO",
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//----------------------------------//-----------------//-----------------//-----------------//-----------------
  Widget choice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            style: ButtonStyle(
                side: const MaterialStatePropertyAll(
                    BorderSide(color: Colors.black)),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                )),
            onPressed: () {
              setState(() {
                currentPlayer = 'X';
                botPlayer = 'O';
                flag = !flag;
              });
            },
            child: const Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                "X",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white),
              ),
            )),
        const Text(
          "or",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 30, color: Colors.red),
        ),
        TextButton(
            style: ButtonStyle(
                side: const MaterialStatePropertyAll(
                    BorderSide(color: Colors.black)),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                )),
            onPressed: () {
              setState(() {
                currentPlayer = 'O';
                botPlayer = 'X';
                turnBot = true;
                flag = !flag;
              });
            },
            child: const Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                "O",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.white),
              ),
            )),
      ],
    );
  }

  Widget borderOne(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          if (board[index] == "") {
            tries++;
            board[index] = currentPlayer;
            switchPlayer();
            checkWinning();
          }
        });
      },
      child: Container(
        width: 60,
        height: 60,
        child: Text(
          textAlign: TextAlign.center,
          "${board[index]}",
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),
        ),
      ),
    );
  }

  Widget rowOne(int first, int second, int third) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        borderOne(first),
        topLine(),
        borderOne(second),
        topLine(),
        borderOne(third),
      ],
    );
  }

  void switchPlayer() {
    setState(() {
      currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
    });
  }

  void resetBoard() {
    setState(() {
      board = List.generate(9, (index) => "");
      tries = 0;
    });
  }

  void resetScore() {
    setState(() {
      scoreX = 0;
      scoreO = 0;
    });
  }

  void checkDraw() {
    setState(() {
      resetBoard();
    });
  }

  drawFunc() {
    return Column(
      children: [
        Text(
          "Draw",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w700, fontSize: 30),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                resetBoard();
              });
            },
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "reset",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
            ))
      ],
    );
  }

  void checkWinning() {
    for (var i in winningConditions) {
      String first = board[i[0]];
      String second = board[i[1]];
      String third = board[i[2]];

      if (first == second && second == third && first != "") {
        if (first == 'X') {
          setState(() {
            scoreX++;
          });
        } else {
          setState(() {
            scoreO++;
          });
        }
        resetBoard();
        setState(() {
          winnerHave = true;
        });
        break;
      }
    }
  }
}
