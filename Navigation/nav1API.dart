// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const NavApp());
}

class NavApp extends StatelessWidget {
  const NavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigation Demo',
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) => FirstScreen());
            case '/second':
              return MaterialPageRoute(builder: (context) => SecondScreen());
          }
        }
        // home: FirstScreen(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => FirstScreen(),
        //   '/second': (context) => SecondScreen(),
        // },
        );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                // onPressed: () async {
                //   final result = await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => SecondScreen(),
                //       settings: RouteSettings(arguments: 'data from screen 1'),
                //     ),
                //   );
                //   print(result);
                // },
                child: Text('Go to screen two'))
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Yes');
                },
                child: Text('Return to screen one'))
          ],
        ),
      ),
    );
  }
}
