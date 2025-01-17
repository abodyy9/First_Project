import 'package:flutter/material.dart';

import 'main.dart';

class FirstProject extends StatelessWidget {
  const FirstProject({super.key});

  @override
    Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          title: Center(
              child: Text(
                'السيرة الذاتية',
                style: TextStyle(fontSize: 25, color: Colors.pink),
              )),
          backgroundColor: Colors.white,
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
      body: Container(
        color: Colors.pink[100],
        padding: EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الاسم:عبدالستار محسن اللميحي',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('25 :العمر', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(' الجنس: يمني', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(' التخصص: تقنية معلومات', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('المستوى: بكالوريوس', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(' :الأعمال السابقة', style: TextStyle(fontSize: 18)),
            Text('لايوجد', style: TextStyle(fontSize: 16)),
            Text('لايوجد', style: TextStyle(fontSize: 16)),
            Text('لايوجد', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(' :المهارات', style: TextStyle(fontSize: 18)),
            Text('القراءة', style: TextStyle(fontSize: 16)),
            Text('البرمجة', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
