import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Ground()));
}

class Ground extends StatefulWidget {
  const Ground({super.key});

  @override
  State<Ground> createState() => _GroundState();
}

class _GroundState extends State<Ground> {
  int runs = 0;
  int balls = 6;
  String run_text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini Cricket", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/bat.png",
                        fit: BoxFit.contain,
                        scale: 0.1,
                      ),
                      Text("Runs", style: TextStyle(fontSize: 20)),
                      Text("$runs", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/ball.png",
                        fit: BoxFit.contain,
                        scale: 0.1,
                      ),
                      Text("Balls", style: TextStyle(fontSize: 20)),
                      Text("$balls", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    balls == 6 ? "" : "$run_text Runs",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                balls > 0
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Random random = Random();
                            int run = (random.nextInt(6) + 1);
                            print(run);
                            if (run != 5) {
                              runs += run;
                              balls -= 1;
                              run_text = run.toString();
                            } else {
                              runs += 0;
                              balls -= 1;
                              run_text = "No";
                            }
                          });
                        },
                        child: Text("Bat"),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            balls = 6;
                            runs = 0;
                            run_text = "";
                          });
                        },
                        child: Text("Reset"),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
