import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test_proj/ChangesInAppetite.dart';
import 'package:test_proj/DifficultyOfConcentration.dart';
import 'package:test_proj/Fatigue.dart';
import 'package:test_proj/FeelingsOfWorthlessness.dart';
import 'package:test_proj/Indecision.dart';
import 'package:test_proj/Irritability.dart';
import 'package:test_proj/LossOfInterestInSEx.dart';
import 'package:test_proj/SenseOfPunishment.dart';
import 'package:test_proj/WeightChanges.dart';
import 'package:test_proj/changeOfSleep.dart';
import 'package:test_proj/crying.dart';
import 'package:test_proj/homePage.dart';
import 'package:test_proj/loss%20of%20pleasure.dart';
import 'package:test_proj/main.dart';
import 'package:test_proj/pessimisim.dart';
import 'package:test_proj/senseOf%20Failure.dart';
import 'package:test_proj/socialWithdrawal.dart';
import 'package:test_proj/suicidalIdeas.dart';

class Health extends StatefulWidget {
  @override
  _Health createState() => _Health();
}

class _Health extends State<Health> {
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
              child: Text(
                'ALmost there ...',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16.0),
             Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: StepProgressIndicator(
    totalSteps: 21,
    currentStep: 20,
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
                '20.  Health',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            RadioListTile<String>(
              title: Text('I am no more worried about my health than usual.'),
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
                  'I am worried about physical problems like aches, pains, upset stomach, or constipation.'),
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
              title: Text(
                  'I am very worried about physical problems and it\'s hard to think of much else.'),
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
              title: Text(
                  'I am so worried about my physical problems that I cannot think of anything else.'),
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
                      MaterialPageRoute(builder: (context) => WeightChanges()));
                },
                child: Icon(Icons.navigate_before),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // تحويل للشاشة التي تأتي بعد الشاشة الحالية
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LossOFInterest()));
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
