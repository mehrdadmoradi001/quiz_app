import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/appBar_widget.dart';

class ResultScreen extends StatelessWidget {
   ResultScreen({Key? key, this.correctAnswerResult = 0}) : super(key: key);

  int correctAnswerResult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget('نتیجه آزمون', Colors.red[600]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Text(
              'پاسخ های صحیح شما',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '$correctAnswerResult',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
