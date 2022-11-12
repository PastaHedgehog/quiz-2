import 'package:flutter/material.dart';
import './question.dart';

class Result extends StatelessWidget {
  final double resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    final score = num.parse(resultScore.toStringAsFixed(2));

    if (score <= 10.00) {
      resultText =
          ' Ты пытался. Вот твои баллы: $score 👹! \n Хочешь поробовать ещё?';
    } else if (score > 10.00 && score <= 25.00) {
      resultText =
          'Ты почти смог. Вот твои баллы: $score 👀! \n Хочешь поробовать ещё?';
    } else if (score > 25.00 && score <= 40.00) {
      resultText =
          'Ты сделал это. Вот твои баллы: $score 🦾! \n Хочешь поробовать ещё?';
    } else {
      resultText =
          'Боженька. Вот твои баллы: $score 🧠! \n Хочешь поробовать ещё?';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: SizedBox(
                      width: 360,
                      child: Question(
                        resultPhrase,
                      ),
                    )),
                ElevatedButton(
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Поробовать ещё',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBEBEBE),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF580019))),
                  onPressed: resetHandler,
                )
              ],
            )));
  }
}
