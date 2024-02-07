import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test_proj/Indecision.dart';
import 'package:test_proj/Irritability.dart';
import 'package:test_proj/SenseOfPunishment.dart';
import 'package:test_proj/crying.dart';
import 'package:test_proj/homePage.dart';
import 'package:test_proj/loss%20of%20pleasure.dart';
import 'package:test_proj/main.dart';
import 'package:test_proj/pessimisim.dart';
import 'package:test_proj/senseOf%20Failure.dart';
import 'package:test_proj/suicidalIdeas.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SocialWithdrawal extends StatefulWidget {
  @override
  _SocialWithdrawal createState() => _SocialWithdrawal();
}

class _SocialWithdrawal extends State<SocialWithdrawal> {
  String selectedOption = '';
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child:  TextAnimator(
              'One More...',
              atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,fontSize: 23,
              ),
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                  blur: const Offset(0, 20), scale: 2),
              textAlign: TextAlign.center,
            ),),
            SizedBox(height: 16.0),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: StepProgressIndicator(
    totalSteps: 21,
    currentStep: 12,
    size: 13,
    padding: 0,
    
    unselectedColor: Colors.white,
    roundedEdges: Radius.circular(10),
    selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF8ABAC5), Colors.white],
    ),
    
),),
            SizedBox(height: 16.0), // المسافة بين الـ Slider والنص الجديد

            Padding(
              padding: const EdgeInsets.all(16.0),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF8ABAC5),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                '12. Social withdrawal',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            RadioListTile<String>(
              title: Text('I have not lost intrest in other people  .'),
              groupValue: selectedOption,
              value: 'a',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                 
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),

            RadioListTile<String>(
              title: Text(
                  'I am less interested in other people than I used to be  .'),
              groupValue: selectedOption,
              value: 'b',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 1;
                  somaticScore += 1;
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
            RadioListTile<String>(
              title: Text('I have lost most of my interest in other people .'),
              groupValue: selectedOption,
              value: 'c',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 2;
                  somaticScore += 2;
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
            RadioListTile<String>(
              title: Text('I have lost all my interest in other people .'),
              groupValue: selectedOption,
              value: 'd',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 3;
                  somaticScore += 3;
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Crying()));
                },
                child: Icon(Icons.navigate_before),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // تحويل للشاشة التي تأتي بعد الشاشة الحالية
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Indecision()));
                },
                child: Icon(Icons.navigate_next),
              ),
              label: '',
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                Text(
                  '@“Let’s Start…”',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.0),
                // Add more Drawer items if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
