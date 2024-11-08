import 'package:attendance_mangager/widgets/Classes_Container.dart';
import 'package:attendance_mangager/widgets/buttton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Attendance Manager',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Column(
          children: [ClassesContainer()],
        ),
        floatingActionButton: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'classCreation');
            },
            child: const customButton()));
  }
}
