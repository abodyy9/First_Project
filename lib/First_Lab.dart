import 'package:flutter/material.dart';

import 'main.dart';

class FirstLab extends StatelessWidget {
  const FirstLab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              'first_lab',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[500],
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
        body: const Center(
          child: Text(
            "Hello Flutter",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                backgroundColor: Colors.white,
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
