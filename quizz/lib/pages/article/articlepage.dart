import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz/app/router_name.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

@override
Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //       context.goNamed(RouterName.articleName);
      //     },

      //     child: const Text('Next')),
      // ),
    );
  }
  
}