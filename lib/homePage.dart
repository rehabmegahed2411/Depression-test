import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:test_proj/main.dart';
import 'package:test_proj/pessimisim.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedOption = '';
  String? previousOption;

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
                'let\'s start...!',
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
                currentStep: 1,
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
              child: Text(
                'Choose the statement that best describes your health during the past week ,including today:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F5D6B),
                ),
              ),
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
                '1. Sadness',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            RadioListTile<String>(
              title: Text('I do not feel sad'),
              groupValue: selectedOption,
              value: 'a',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  previousOption = value;
                  updateScores(selectedOption);
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),

            RadioListTile<String>(
              title: Text('I feel sad'),
              groupValue: selectedOption,
              value: 'b',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 1;
                  cognitiveScore += 1;
                  updateScores(selectedOption);
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
            RadioListTile<String>(
              title: Text('I am sad all time and I can not snap out of it'),
              groupValue: selectedOption,
              value: 'c',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 2;
                  cognitiveScore += 2;
                  updateScores(selectedOption);
                });
              },
              activeColor: Color(0xFF8ABAC5),
            ),
            RadioListTile<String>(
              title: Text('I am so sad and unhappy that Ican not stand it'),
              groupValue: selectedOption,
              value: 'd',
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  userScore += 3;
                  cognitiveScore += 3;
                  updateScores(selectedOption);
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
                  // تحويل للشاشة التي تأتي قبل الشاشة الحالية
                },
                child: Icon(Icons.navigate_before),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // تحويل للشاشة التي تأتي بعد الشاشة الحالية
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Pessimism()));
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
                  '@“Let’s Start…!”',
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

  void updateScores(String newValue) {
    if (previousOption != null) {
      // إزالة النقاط المحسوبة من الإجابة السابقة
      switch (previousOption) {
        case 'b':
          userScore -= 1;
          cognitiveScore -= 1;
          break;
        case 'c':
          userScore -= 2;
          cognitiveScore -= 2;
          break;
        case 'd':
          userScore -= 3;
          cognitiveScore -= 3;
          break;
        default:
          break;
      }
    }
    @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      throw UnimplementedError();
    }
  }
}
