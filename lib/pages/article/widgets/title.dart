import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtTitle extends StatelessWidget {
  const ArtTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
         Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 18,
        ),
        Text('abc'),
      ],

    );
  }
  
}