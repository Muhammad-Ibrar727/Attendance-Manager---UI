import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 86, 74),
          borderRadius: BorderRadius.circular(100)),
      padding: const EdgeInsets.all(19),
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
