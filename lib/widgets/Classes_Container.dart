import 'package:flutter/material.dart';

class ClassesContainer extends StatefulWidget {
  const ClassesContainer({super.key});

  @override
  State<ClassesContainer> createState() => _ClassesContainerState();
}

class _ClassesContainerState extends State<ClassesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 211, 210, 210)
              .withOpacity(0.5), // Shadow color
          spreadRadius: 3, // Spread radius
          blurRadius: 7, // Blur radius
          offset: const Offset(0, 1), // Offset in x and y direction
        ),
      ]),
      height: 105,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Web Development',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              Text(
                'sem-1  - Section 1',
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
          Column(
            children: [
              Text('0',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 36, 223, 132),
                  )),
              Text(
                'Classes',
                style: TextStyle(color: Colors.black54),
              )
            ],
          )
        ],
      ),
    );
  }
}
