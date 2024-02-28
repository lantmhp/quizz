import 'package:flutter/material.dart';
import 'package:quizz/app/router_name.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz/app/utils/const.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

@override
Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
            itemCount: 10, 
            itemBuilder: (BuildContext context , int index){
              return Container(
                color: Colors.primaries[index],
                child: Align(
                  child: Text('Item + $index'),
                ),
              );
            }),
      )
    );
  }
  
}