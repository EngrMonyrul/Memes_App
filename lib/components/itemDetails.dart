import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class itemDetails extends StatefulWidget {
  dynamic snapshot;
  String title;
  dynamic item;
  itemDetails(
      {Key? key,
      required this.snapshot,
      required this.item,
      required this.title})
      : super(key: key);

  @override
  State<itemDetails> createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: widget.item.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
