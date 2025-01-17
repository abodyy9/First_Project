import 'package:first_app/the_calculator.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Fifth_Project.dart';
import 'package:first_app/First_Project.dart';
import 'package:first_app/Fourth_Project.dart';
import 'package:first_app/Second_Project.dart';
import 'package:first_app/Third_Project.dart';
import 'package:first_app/main.dart';

import 'First_Lab.dart';
import 'Text_Field.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.yellow[800],
      child: Column(
        children: [
          const DrawerHeader(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage('images/light.png'),
                    radius: 40),
                Divider(
                    indent: 60,
                    endIndent: 60,
                    height: 3,
                    color: Colors.black,
                    thickness: 1),
                Text(
                  'My Home Works',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildListTile(context, 'Home', Icon(Icons.home), MyHome()),
                buildListTile(
                    context, 'First_Lab', Icon(Icons.menu_book), FirstLab()),
                buildListTile(context, 'First_Project', Icon(Icons.menu_book),
                    FirstProject()),
                buildListTile(context, 'Second_Project', Icon(Icons.menu_book),
                    SecondProject()),
                buildListTile(context, 'Third_Project', Icon(Icons.menu_book),
                    ThirdProject()),
                buildListTile(context, 'Fourth_Project', Icon(Icons.menu_book),
                    FourthProject()),
                buildListTile(
                    context, 'Fifth_Project', Icon(Icons.menu_book),
                    FifthProject()),
                buildListTile(
                    context, 'The_Calculator', Icon(Icons.menu_book),
                    The_Calculator()),
                buildListTile(
                    context, 'Text_Field', Icon(Icons.menu_book), Myapp()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildListTile(BuildContext context, title, icon, page) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text(title),
        tileColor: Colors.white,
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
                (route) => false,
          );
        },
      ),
    );
  }
}
