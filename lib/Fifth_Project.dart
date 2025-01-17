import 'package:flutter/material.dart';

import 'main.dart';

class FifthProject extends StatelessWidget {
  const FifthProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: const Text('MaterialApp'),
          actions: [
            const Icon(Icons.info),
            PopupMenuButton<int>(
              itemBuilder: (context) => [],
              color: Colors.white,
              elevation: 2,
            )
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHome(),
                  ),
                  (route) => false,
                );
              },
              icon: const Icon(Icons.home))),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin:  EdgeInsets.all(10.0),
                width: 400.0,
                height: 730.0,
                child:  const Center(
                    child: Text(
                  'A convenience widget that wraps a number of '
                      'widgets that are commonly required for '
                      'applications implementing Material Design.',
                  style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                )),
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                width: 400.0,
                height: 60.0,
                child: const Text(
                  'MaterialApp',
                  style: TextStyle(fontSize: 30.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}