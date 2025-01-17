import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(The_Calculator());
}

class The_Calculator extends StatefulWidget {
  @override
  State<The_Calculator> createState() => _The_CalculatorState();
}

class _The_CalculatorState extends State<The_Calculator> {
  TextEditingController number1 = TextEditingController();

  TextEditingController number2 = TextEditingController();

  double sum = 0;
  var String;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "The Calculator",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 23.0),
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
                  icon: Icon(Icons.home))
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                margin: EdgeInsets.all(5.0),
                child: ListTile(
                  leading: Icon(
                    Icons.calculate,
                    color: Colors.blue[600],
                    size: 30.0,
                  ),
                  title: const Text(
                    'A Simple Calculator',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: 200.0,
                height: 50.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: number1,
                  decoration: InputDecoration(
                      fillColor: Colors.blue[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                width: 200.0,
                height: 50.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: number2,
                  decoration: InputDecoration(
                      fillColor: Colors.blue[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(30.0)),
                  width: 200.0,
                  height: 50.0,
                  margin: EdgeInsets.all(10),
                  child: Center(child: Text(sum.toString())),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.blue[100],
                ),
                margin: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            sum = double.parse(number1.text) +
                                double.parse(number2.text);
                          },
                          child: Text("+",style: TextStyle(fontSize: 20.0),)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            sum = double.parse(number1.text) -
                                double.parse(number2.text);
                          },
                          child: Text("-",style: TextStyle(fontSize: 30.0),)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            sum = double.parse(number1.text) *
                                double.parse(number2.text);
                          },
                          child: Text("*",style: TextStyle(fontSize: 20.0),)),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {});
                            sum = double.parse(number1.text) /
                                double.parse(number2.text);
                          },
                          child: Text("/",style: TextStyle(fontSize: 20.0),)
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}
