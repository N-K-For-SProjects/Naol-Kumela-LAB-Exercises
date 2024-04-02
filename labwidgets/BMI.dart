// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int weight = 60;
  int height = 176;
  double bmi = 0;
  String result = "Enter Value";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI Calculator',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Center(child: Text('MALE', style: TextStyle(fontSize: 20))),
                    Padding(padding: EdgeInsets.all(10)),
                    Icon(Icons.male),
                  ],
                ),
                Padding(padding: EdgeInsets.all(35)),
                Column(
                  children: [
                    Center(
                        child: Text('FEMALE', style: TextStyle(fontSize: 20))),
                    Padding(padding: EdgeInsets.all(10)),
                    Icon(Icons.female),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(35)),
            HeightSliderWidget(),
            Padding(padding: EdgeInsets.all(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("WEIGHT"),
                    Text('66 '),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => setState(() => {}),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () => setState(() => {}),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(15)),
                Column(
                  children: [
                    Text("AGE"),
                    Text('50 '),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => setState(() => height -= 1),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () => setState(() => height += 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(45)),
            ElevatedButton(
              onPressed: () {},
              child: Text('CALCULATE'),
            ),
          ],
        ),
      ),
    );
  }
}

class HeightSliderWidget extends StatefulWidget {
  @override
  _HeightSliderWidgetState createState() => _HeightSliderWidgetState();
}

class _HeightSliderWidgetState extends State<HeightSliderWidget> {
  double _height = 150.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Height: ${_height.toStringAsFixed(0)} cm'),
        Slider(
          value: _height,
          min: 100.0,
          max: 200.0,
          onChanged: (value) {
            setState(() {
              _height = value;
            });
          },
        ),
      ],
    );
  }
}
