import 'package:flutter/material.dart';
import 'package:quizz/app/utils/const.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: getWidth(context),
          height: getHeight(context)*0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: Colors.white,
            )
          ),
          child: Stack(
            children: [
              Container(
                width: getWidth(context) * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(0, 177, 49, 49),
                    Color.fromARGB(0, 205, 23, 23),
                  ])
                ),
              )
            ],
          ),
        )
      ],
    );
  }
  
}