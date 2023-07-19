import 'package:flutter/material.dart';

Stack LoadingScreen() {
  return Stack(
    children: [
      Center(
        child: Container(
          height: 100,
          width: 100,
          child: const CircularProgressIndicator(
            color: Color.fromARGB(255, 0, 255, 21),
          ),
        ),
      ),
      const Center(
        child: Text(
          'Loading',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
