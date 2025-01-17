import 'package:flutter/material.dart';

import 'main.dart';

class ThirdProject extends StatelessWidget {
  const ThirdProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHome(),
                  ),
                      (route) => false,
                );
              },
              icon: Icon(Icons.home))),
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.all(30),
            color: Colors.blue,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: EdgeInsets.all(5),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.all(40),
                child: Transform.rotate(
                  angle: 270,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.red,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      // padding: EdgeInsets.all(20),
                      child: const Text(
                        "hello",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
