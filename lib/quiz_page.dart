import 'package:flutter/material.dart';
import 'package:quiz_app/constants/Constants.dart';
import 'package:quiz_app/data/Question.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/widgets/appBar_widget.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSubmitted = false;
  int correctAnswerQuiz = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionsList()[shownQuestionIndex];
    String questionImageIndex =
        getQuestionsList()[shownQuestionIndex].imageNumber!;

    return Scaffold(
      appBar: AppBarWidget(
          'سوال ${shownQuestionIndex + 1} از ${getQuestionsList().length}  ' , Colors.indigo[800]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: double.infinity),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 300,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            ...List.generate(4, (index) => getOptionItem(index)),
            if (isFinalAnswerSubmitted)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(correctAnswerResult: correctAnswerQuiz,),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: Size(200.0, 50.0),
                ),
                child: Text(
                  'مشاهده نتایج کوییز',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getOptionItem(int index) => ListTile(
        title: Text(
          selectedQuestion!.answerList![index],
          textAlign: TextAlign.end,
        ),
        onTap: () {
          if (selectedQuestion!.correctAnswer! == index) {
            correctAnswerQuiz++;
          } else {
            print('wrong');
          }

          if (shownQuestionIndex == getQuestionsList().length - 1) {
            isFinalAnswerSubmitted = true;
          }

          setState(() {
            if (shownQuestionIndex < getQuestionsList().length - 1)
              shownQuestionIndex++;
          });
        },
      );
}
