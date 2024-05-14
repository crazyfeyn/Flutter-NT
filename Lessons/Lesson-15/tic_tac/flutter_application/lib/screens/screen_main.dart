import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets_all.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenMain();
  }
}

class _ScreenMain extends State<ScreenMain> {
  int tries = 1;
  bool flag = true;
  int playerX = 0;
  int playerO = 0;
  int scoreX = 0;
  int scoreO = 0;
  bool turnBot = false;
  bool turnMe = false;
  String currentPlayer = '';
  String botPlayer = '';
  List board = List.generate(3, (_) => List.generate(3, (_) => ""));
  List randomChoice = List.generate(3, (i) => List.generate(3, (j) => [i, j]));

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
              const SizedBox(height: 20),
              score(playerX, playerO),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (i) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (j) => InkWell(
                        onTap: () {
                          setState(() {
                            if (board[i][j] == "") {
                              tries++;
                              board[i][j] = currentPlayer;
                              botMove();
                              var x = checkWin(currentPlayer);
                            
                            }
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                  color: Colors.white, width: j < 2 ? 5 : 0),
                              bottom: BorderSide(
                                  color: Colors.white, width: i < 2 ? 5 : 0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "${board[i][j]}",
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 37),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "X - $scoreX",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "O - $scoreO",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Colors.white),
                      ),
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
                turnMe = true;
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
                botMove();
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

  void botMove() {
    while (true) {
      int randomO = Random().nextInt(3);
      int randomX = Random().nextInt(3);

      if (board[randomX][randomO] == "") {
        board[randomX][randomO] = botPlayer;
        break;
      }
    }
  }

  checkWin(String player) {
    for (int i = 0; i < 3; i++) {
      if ((board[i][0] == board[i][1] && board[i][1] == board[i][2]) ||
          (board[0][i] == board[1][i] && board[1][i] == board[2][i]) ||
          (board[0][0] == board[1][1] && board[1][1] == board[2][2]) ||
          (board[0][2] == board[1][1] && board[1][1] == board[2][0])) {
        return true;
      }
    }

    return false;
  }
}
