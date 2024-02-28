import 'package:flutter/material.dart';
import 'package:quizz/app/router_name.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

@override
Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/bg2.jpg', fit: BoxFit.cover,),
          ),
          Positioned.fill(child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Column(
              
              mainAxisAlignment : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Let\'s play quizz game',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: size.height *0.3),
                const Text('Bộ câu hỏi trắc nghiệm Đấu trường chân lý',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
                SizedBox(height: size.height *0.05),
                Material(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: (){
                      context.goNamed(RouterName.categoryName);
                    },
                    child: Ink(
                      padding: EdgeInsets.symmetric(vertical: size.height*0.02),
                      
                      decoration: const BoxDecoration(
                        
                        gradient: LinearGradient(colors: [
                          Color(0xff44A3AE),
                          Color(0xff33FBC9)
                        ])
                      ),
                      child: const Align(
                        child: Text('Bắt đầu',
                        style: TextStyle(
                          fontSize: 20
                        ),),
                      ),
                    ),
                  ),
                )
            ],),
          ))
        ],
      )
    );
  }
  
}