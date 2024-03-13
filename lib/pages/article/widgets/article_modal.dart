import 'package:flutter/material.dart';
import 'package:quizz/apps/utils/const.dart';
import 'package:quizz/models/question_model.dart';

Future<void> showModal(context, String valueInput, Question data) =>
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.8,
        child: Container(
          width: getWidth(context),
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                20,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    (valueInput == data.answer)
                        ? successAnswer(valueInput)
                        : errorAnswer(valueInput, data.answer),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

RichText errorAnswer(String valueInput, answer) {
  return RichText(
    text: TextSpan(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      children: [
        const TextSpan(text: 'Đáp án '),
        TextSpan(
            text: valueInput,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 22,
            )),
        const TextSpan(text: ' của bạn chưa chính xác! Đáp án đúng là: '),
        TextSpan(
            text: answer.toString(),
            style: const TextStyle(
              color: Colors.green,
              fontSize: 22,
            )),
      ],
    ),
  );
}

RichText successAnswer(String valueInput) {
  return RichText(
    text: TextSpan(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      children: [
        const TextSpan(text: 'Đáp án '),
        TextSpan(
            text: valueInput,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 22,
            )),
        const TextSpan(text: ' của bạn  chính xác!'),
      ],
    ),
  );
}
