import 'package:quiz_app/data/Question.dart';

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهورترین شعبده باز جهان کیست ؟';
  firstQuestion.imageNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'مری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['روسیه', 'آمریکا', 'چین', 'هند'];


  return [firstQuestion,secondQuestion];
}
