// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:attendance_mangager/widgets/buttton.dart';
import 'package:flutter/material.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  void popup() {
    setState(() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Add Students'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    width: 190,
                    height: 50,
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        'IMPORT FROM EXCEL',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1.5,
                        color: Colors.green,
                      ))
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    width: 190,
                    height: 50,
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        'IMPORT FROM CLASS',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  width: 250,
                  height: 150,
                  // color: Colors.white,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.check_circle, color: Colors.green),
                          Text("Class"),
                        ],
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.green,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.circle, color: Colors.grey),
                          Text("Students"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),
              // Middle container with "Import Students" text
              Column(
                children: [
                  InkWell(
                      onTap: popup,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5)),
                        width: 190,
                        height: 50,
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            'IMPORT STUDENTS ',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      )),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'click on the + button to add student in class',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              // Spacer to push the bottom content to the end of the screen
              const Spacer(),
              // Bottom container with "Previous" and "Finish" buttons
              Container(
                height: 60,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Previous',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: Text(
                        'Finish',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: customButton(),
          )),
    );
  }
}
