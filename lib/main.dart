import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomeWidget(),
      ),
    );
  }
}
