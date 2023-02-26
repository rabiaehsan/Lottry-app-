import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center(child: Text('Lottry App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  // border: Border.all(color: const Color(0xff40434e)),
                  color: const Color(0xffe6e8e6),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 110, 96, 96),
                      // offset: Offset(
                      //   5.0,
                      //   5.0,
                      // ),
                      blurRadius: 5.0,
                      spreadRadius: 0.9,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: x == 5
                    ? Column(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Icon(
                                Icons.done_all,
                                color: Colors.green,
                                size: 35,
                              ),
                            ),
                          ),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Center(
                                child: Text(
                                  ' Congratulations you Win The \n Lottry',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                'your Number is $x  your winner  ',
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Icon(
                                Icons.warning,
                                color: Color(0xffff0022),
                                size: 35,
                              ),
                            ),
                          ),
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '  Lottry winning numbers is 5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                'your value is $x your not winner please try again ',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 200,

                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.purple,
                        // offset: Offset(0.5, 0.8),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Center(
                          child: Text(
                            'Your Number is $x ',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {
            x = random.nextInt(6);

            setState(() {});
          },
          child: const Icon(Icons.refresh_rounded),
        ),
      ),
    );
  }
}
