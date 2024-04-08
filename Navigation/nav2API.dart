// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatefulWidget {
  const CourseApp({super.key});

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;
  List<Course> courses = [
    Course(
        code: "SiTE-001",
        title: "Introduction To Programming",
        description: "Computer Organization, Architecture, Programming"),
  ];

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CoursesListScreen(courses: courses, onTapped: _tabHandler),
          ),
          if (_selectedCourse != null)
            MaterialPage(
                key: ValueKey(_selectedCourse),
                child: CourseDetailsScreen(
                  course: _selectedCourse!,
                ))
        ],

        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        },

        // onPopPage: (route, result) {
        //   return route.didPop(result);
        // },
      ),
    );
  }
}

class Course {
  String code;
  String title;
  String description;
  Course({required this.code, required this.title, this.description = ""});
}

class CoursesListScreen extends StatelessWidget {
  const CoursesListScreen({required this.courses, required this.onTapped});
  final List<Course> courses;
  final ValueChanged<Course> onTapped;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses List"),
      ),
      body: ListView(
        children: [
          for (var course in courses)
            ListTile(
              title: Text(course.title),
              subtitle: Text(course.code),
              onTap: () => onTapped(course),
            ),
        ],
      ),
    );
  }
}

class CourseDetailsScreen extends StatelessWidget {
  final Course course;
  const CourseDetailsScreen({required this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          children: [
            Text(course.title),
            Text(course.code),
            Text(course.description),
          ],
        ),
      ),
    );
  }
}
