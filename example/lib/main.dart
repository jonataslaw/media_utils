import 'package:flutter/material.dart';
import 'MediaUtils.dart';


void main() {
  runApp(
     MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media',
      home: MainPage(),
    );
  }
}


class MainPage extends StatelessWidget {

  String _path = "https://images.pexels.com/photos/2872767/pexels-photo-2872767.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  @override
  Widget build(BuildContext context) {
   
    print("rebuild");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => null),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             (MediaUtils.isImage(_path))?
             Container(
               height: 50,
               width: 50,
               child: Image.network(
             _path,
             ))
             : Container()
            ],
          ),
        ),
      ),
    );
  }
}