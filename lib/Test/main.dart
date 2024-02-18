import 'package:flutter/material.dart';
import 'package:test_proj/Test/firstscreen.dart';


int userScore = 0;
int cognitiveScore = 0;
int somaticScore = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage( ),
    // home:MtResult(userScore: userScore, cognitiveScore: cognitiveScore, somaticScore: somaticScore),
      

    );
  }
}
