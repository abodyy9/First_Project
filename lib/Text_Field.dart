import 'package:flutter/material.dart';
import 'main.dart';

void main(){
  runApp(MaterialApp(
    // builder: (context, child) =>
    //     Directionality(textDirection: TextDirection.rtl, child: child!),
    debugShowCheckedModeBanner: false,
    home: Myapp(),));
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List <String>Student =['Abdalsatar','Mohsen','Allmihi'];

  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text_Field'),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
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
              icon: Icon(Icons.home)
          ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: TextField(
              // onChanged: (value) {
              //   setState(() {
              //   });
              //   Student.add(value);
              // },
              // onSubmitted: (value) {
              //   setState(() {});
              //     if(value.isNotEmpty) Student.add(value);
              // },
              controller: _name,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 22.0),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.person,size: 30.0,),
                  fillColor: Colors.blue,
                  filled: true,
                  hintText: 'Input Your Name',
                  hintStyle: TextStyle(color: Colors.white)
              ),
            ),
          ),
          Container(
            child: ElevatedButton.icon(onPressed: () {
              setState(() {});
              if(_name.text.isNotEmpty&&!Student.contains(_name.text))
                Student.add(_name.text);
              _name.clear();
            },
              icon: Icon(Icons.save),
              label: Text('Save',style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal),
              ),),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Student.length,
              itemBuilder: (context, i) {
                return Container(
                  height: 100.0,
                  width: 100.0,
                  //margin: EdgeInsets.only(left: 50.0,right: 50.0),
                  padding: EdgeInsets.only(top: 2),
                  child: ListTile(
                    onTap: () {
                      _name.text=Student[i];
                    },
                    trailing:IconButton(onPressed: () {
                      Student.removeAt(i);
                      setState(() {
                      });
                    } ,icon: Icon(Icons.delete),),
                    leading: IconButton(onPressed: () {
                      setState(() {});
                      Student[i]=_name.text;
                      _name.clear();
                    }, icon: Icon(Icons.update),),
                    title: Text(Student[i],style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,),
                    tileColor: Colors.blue[500],
                  ),
                );
              },),
          )
        ],
      ),
    );
  }
}
