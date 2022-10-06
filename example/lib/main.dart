import 'package:flutter/material.dart';
import 'package:media_utils/media_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Media',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final _path = "https://images.pexels.com/photos/2872767/pexels-photo-2872767.jpeg";

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _path.isImage
                  ? SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.network(_path),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
