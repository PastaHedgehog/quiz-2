import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          child: SizedBox(
            width: 200,
            child: Text(
              answerText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFFBEBEBE),
              ),
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF580019))),
          onPressed: selectHandler,
        ));
  }
}
