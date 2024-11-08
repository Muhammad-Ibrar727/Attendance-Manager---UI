import 'package:flutter/material.dart';

class InputFileds extends StatelessWidget {
  String hintText;
  InputFileds({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 80,
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 16),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 247, 86, 74), width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black45, fontSize: 17),
            labelText: hintText,
            labelStyle: const TextStyle(color: Colors.black45)),
      ),
    );
  }
}
