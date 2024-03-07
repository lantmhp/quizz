import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz/app/router_name.dart';
import 'package:quizz/app/utils/const.dart';
import 'package:quizz/pages/article/widgets/loading.dart';
import 'package:quizz/pages/article/widgets/title.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

@override
Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover,),
          ),
          Positioned.fill(child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const ArtTitle(),
                    SizedBox(height: getHeight(context) * 0.04),
                    const Loading(),
                    SizedBox(height: getHeight(context) * 0.04),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
  
}