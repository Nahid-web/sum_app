import 'package:flutter/material.dart';

EdgeInsets linePadding() {
  return const EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}

TextStyle inputTextStyle(){
  return const TextStyle(
    color: Colors.blue,
    fontSize: 20,
  );
}


ButtonStyle buttonStyle(){
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.blue,
    backgroundColor: Colors.white,
    padding: const EdgeInsets.all(20),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    textStyle: const TextStyle(
      fontSize: 20,
    )
  );
}

InputDecoration fieldInput(label) {
  return InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Colors.white60,
      filled: true,
      labelText: label,
      labelStyle: const TextStyle(
        color: Colors.black45,
      ),
    );
}
