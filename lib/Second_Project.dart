import 'package:flutter/material.dart';

import 'main.dart';

class SecondProject extends StatelessWidget {
  const SecondProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.blue,
            actions: [
              Icon(Icons.info),
              PopupMenuButton<int>(
                itemBuilder: (context) => [],
                color: Colors.white,
                elevation: 2,
              )
            ],
            title: Text("Container "),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // الحاوية العلوية
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              height: 70,
              child: Center(
                child: Text(
                  'I am container',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
              SizedBox(height: 35.0,),
            // نص مائل باستخدام Transform
            Transform.rotate(
              angle: 0.2,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                width: 500.0,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hai, I am Slanting',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,),

            // نص آخر مائل مع حواف مشطوفة
            Transform.rotate(
              angle: 0.2,
              child: Container(
                height: 50.0,
                width: 600.0,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'I am also Slanting,but see my edges',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // حاويات متداخلة ملونة
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.red,
                      child: Center(
                        child: Container(
                          width: 20,
                          height: 20,
                          color: Colors.blue,
                        ),),),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),);
  }
}
