
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hintText,
  });
final String hintText;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold),
        enabledBorder:const UnderlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white,
              width: 1.5), // The default color when not focused
        ),
      ),
      style:const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}