import 'package:attendance_mangager/pages/addStudentsPage.dart';
import 'package:attendance_mangager/pages/classCreationPage.dart';
import 'package:attendance_mangager/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'classCreation': (context) => ClassCreation(),
          'addStudents': (context) => const AddStudents()
        },
        theme: ThemeData(
            appBarTheme:
                const AppBarTheme(color: Color.fromARGB(255, 57, 167, 148)),
            scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
            primaryColor: const Color.fromARGB(255, 57, 167, 148)),
        home: const HomeScreen());
  }
}
