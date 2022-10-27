import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_page.dart';
import 'package:quiz_app/widgets/appBar_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget('کوییز کویین',Colors.indigo[800]),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/welcome.png'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[700],
                minimumSize: Size(200.0, 40.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => QuizPage(),
                  ),
                );
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
