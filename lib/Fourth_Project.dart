import 'package:flutter/material.dart';

import 'main.dart';

class FourthProject extends StatelessWidget {
  const FourthProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: const Text(
          " sample title",
          style: TextStyle(color: Colors.white),
        ),
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
            icon: Icon(Icons.home)),
        actions: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.directions_bike,
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.directions_bus,
            color: Colors.white,
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [],
            color: Colors.white,
            elevation: 2,
          )
        ],
      ),
      body: const Center(
        child: Text("Hello",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
      ),
    );
  }
}
