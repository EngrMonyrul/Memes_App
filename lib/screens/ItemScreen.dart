import 'package:flutter/material.dart';

import '../components/itemBarScreen.dart';

// ignore: must_be_immutable
class ItemScreen extends StatefulWidget {
  int index;
  String imagePath;
  ItemScreen({Key? key, required this.index, required this.imagePath})
      : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: itemBarScreen(
            imagePath: widget.imagePath,
            index: widget.index,
          ),
        ),
      ),
    );
  }
}
