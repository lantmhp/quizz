import 'package:flutter/material.dart';
import 'package:quizz/app/router_name.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz/app/utils/const.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

@override
Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover,),
          ),
          SafeArea(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3/2),
              itemCount: 10, 
              itemBuilder: (BuildContext context , int index){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.primaries[index],
                  ),
                  
                  child: Align(
                    child: Text('Item + $index'),
                  ),
                );
              }),
        ),
        ],
      )
        
        
    );
  }
  
}