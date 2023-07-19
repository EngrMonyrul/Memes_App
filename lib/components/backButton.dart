import 'package:flutter/material.dart';

class backButton extends StatefulWidget {
  const backButton({super.key});

  @override
  State<backButton> createState() => _backButtonState();
}

class _backButtonState extends State<backButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        setState(() {});
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}
