import 'package:flutter/material.dart';
import 'package:first_app/drawer.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Card',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.normal),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow[700],
          actions: const [
            Icon(
              Icons.book,
              color: Colors.black,
              size: 40,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('images/aboody.jpg'),
            ),
            const Text('عبدالستار اللميحي',style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Text('مبرمج تطبيقات',style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold
            ),),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.phone,
                  color: Colors.blue[500],
                ),
                title:const Text('(967)738210095',style: TextStyle(
                   fontSize: 20.0,
                ),
                ) ,
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(Icons.email,
                  color: Colors.blue[500],
                ),
                title:const Text('abood@gmail.com',style: TextStyle(
                  fontSize: 20.0,
                ),
                ),
              ),
            )
          ],
        ),
        
        drawer: MyDrawer(),
      ),
    );
  }
}
