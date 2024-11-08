import 'package:attendance_mangager/widgets/input_fileds.dart';
import 'package:flutter/material.dart';

class ClassCreation extends StatelessWidget {
  const ClassCreation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SizedBox(
                height: 150,
                width: 250,
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
                        Icon(Icons.circle_rounded, color: Colors.grey),
                        Text("Class"),
                      ],
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
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
            const SizedBox(height: 30),
            InputFileds(hintText: 'Subject'),
            InputFileds(hintText: 'Section'),
            InputFileds(hintText: 'Standart/Semester/Batch'),
            InputFileds(hintText: 'Attendance Required(%)'),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'addStudents');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                color: const Color.fromARGB(255, 57, 167, 148),
                height: 60,
                width: double.infinity,
                child: const Center(
                    child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
