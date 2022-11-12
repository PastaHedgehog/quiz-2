import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

class MainFraime extends StatefulWidget {
  const MainFraime({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainFraimeState();
  }
}

class _MainFraimeState extends State<MainFraime> {
  static const _data = [
    {
      'questionText': 'Сколько лет Матвею?',
      'answers': [
        {'text': '19', 'score': 10.00},
        {'text': '20', 'score': 4.61},
        {'text': '21', 'score': 1.95},
        {'text': '18', 'score': 0.00},
      ]
    },
    {
      'questionText': 'Какой рост у Торшилова?',
      'answers': [
        {'text': '170 см', 'score': 2.3},
        {'text': '155 см', 'score': 0.32},
        {'text': '172 см', 'score': 3.00},
        {'text': '168 см', 'score': 10.00},
      ]
    },
    {
      'questionText': 'Кто такой Женя?',
      'answers': [
        {'text': 'Тот, кто выше Юли', 'score': 0.64},
        {
          'text': 'Тот, кто смотрит гачимучи на рабочем месте 🌈',
          'score': 10.00
        },
        {'text': 'Хороший человек', 'score': 3.28},
        {'text': 'Тот, кто выше меня', 'score': 1.02}
      ]
    },
    {
      'questionText': 'Сколько весит Матвей?',
      'answers': [
        {'text': '120 кг', 'score': 0.12},
        {'text': '50 кг', 'score': 2.13},
        {'text': '68 кг', 'score': 6.42},
        {'text': '75 кг', 'score': 10.00}
      ]
    },
    {
      'questionText': 'А ты создал задачу в ITP?',
      'answers': [
        {'text': 'ДА', 'score': 5.53},
        {'text': 'А как же', 'score': 10.00},
        {'text': 'Безусловно', 'score': 2.47},
        {'text': 'Несомненно', 'score': 2.35}
      ]
    }
  ];

  var _indexQuestion = 0;
  double _totalScore = 0.00;

  void _answerQuestion(double score) {
    _totalScore += score;

    setState(() {
      _indexQuestion++;
    });
  }

  void _restart() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF00583f),
          appBar: AppBar(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                "Вопросики",
                style: TextStyle(
                  color: Color(0xFFBEBEBE),
                ),
              ),
            ),
            backgroundColor: Color(0xFF580019),
          ),
          body: Align(
              alignment: Alignment.center,
              child: (_indexQuestion <= 4 && _indexQuestion >= 0)
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      indexQuestion: _indexQuestion,
                      data: _data)
                  : Result(_totalScore, _restart))),
    );
  }
}
