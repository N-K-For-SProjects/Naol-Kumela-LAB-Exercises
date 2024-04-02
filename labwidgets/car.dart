// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_sharp),
          actions: [
            Icon(Icons.upload),
            Padding(padding: EdgeInsets.all(10)),
            Icon(Icons.settings),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://imgs.search.brave.com/ynoCWgI-jNeJsznj-2LrxwCdBw938meGgFZONSflC6g/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/MXpvb20ubWUvcHJl/di85Ny85NjMyNS5q/cGc'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1975 Porsche 911 Carrera',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text('Year: 1975'),
                    Text('Make: Porsche'),
                    Text('Model: 911 Carrera'),
                    Text('VIN: 9115400029'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
