import 'package:flutter/material.dart';
import 'package:morphing_text/morphing_text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test_proj/homePage.dart';
import 'package:test_proj/main.dart';
import 'package:test_proj/senseOf%20Failure.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Pessimism extends StatefulWidget {
  @override
  _Pissimism createState() => _Pissimism();
}

class _Pissimism extends State<Pessimism> {
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
                padding: EdgeInsets.only(left: 10.0, top: 10.0),
                child:  TextAnimator(
              'One More...',
              atRestEffect: WidgetRestingEffects.pulse(effectStrength: 0.6),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,fontSize: 23,
              ),
              incomingEffect: WidgetTransitionEffects.incomingSlideInFromTop(
                  blur: const Offset(0, 20), scale: 2),
              textAlign: TextAlign.center,
            ), ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: StepProgressIndicator(
                totalSteps: 21,
                currentStep: 2,
                size: 13,
                padding: 0,
                unselectedColor: Colors.white,
                roundedEdges: Radius.circular(10),
                selectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF8ABAC5), Colors.white],
                ),
              ),
            ),
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
                '2.Pessimism',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            RadioListTile<String>(
              title: Text('I am not particulry discouraged about the future'),
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
              title: Text('I feel discouraged about the future'),
              groupValue: selectedOption,
              value: 'b',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 1;
                  cognitiveScore += 1;
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
            RadioListTile<String>(
              title: Text('I feel i have nothing to look forward to'),
              groupValue: selectedOption,
              value: 'c',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 2;
                  cognitiveScore += 2;
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
            RadioListTile<String>(
              title: Text(
                  'I feel the future is hopeless and that things can not improve'),
              groupValue: selectedOption,
              value: 'd',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 3;
                  cognitiveScore += 3;
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
                      MaterialPageRoute(builder: (context) => MyHomePage()));
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
                          builder: (context) => SenseOfFailure()));
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
