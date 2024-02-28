
import 'package:flutter/material.dart';
import 'package:quizz/app/routers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
      ),
      routerConfig: RouterConfigCustom.router,
    );
  }
}