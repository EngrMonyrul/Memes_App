import 'package:flutter/material.dart';

import 'itemDetails.dart';
import 'itemImage.dart';

// ignore: camel_case_types, must_be_immutable
class ifHasData extends StatefulWidget {
  String imagePath;
  dynamic snapshot;
  int index;
  ifHasData(
      {Key? key,
      required this.imagePath,
      required this.snapshot,
      required this.index})
      : super(key: key);

  @override
  State<ifHasData> createState() => _ifHasDataState();
}

class _ifHasDataState extends State<ifHasData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        children: [
          itemImage(
            imagePath: widget.imagePath,
            snapshot: widget.snapshot,
            index: widget.index,
          ),
          const SizedBox(
            height: 20,
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item: widget.snapshot.data.data.memes[widget.index].id.toString(),
            title: 'ID - ',
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item: widget.snapshot.data.data.memes[widget.index].name.toString(),
            title: 'Name - ',
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item:
                widget.snapshot.data.data.memes[widget.index].height.toString(),
            title: 'Height - ',
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item:
                widget.snapshot.data.data.memes[widget.index].width.toString(),
            title: 'Width - ',
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item: widget.snapshot.data.data.memes[widget.index].boxCount
                .toString(),
            title: 'Box Count - ',
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item: widget.snapshot.data.data.memes[widget.index].captions
                .toString(),
            title: 'Captions - ',
          ),
          itemDetails(
            snapshot: widget.snapshot,
            item: widget.snapshot.data.data.memes[widget.index].url.toString(),
            title: 'Url - ',
          ),
        ],
      ),
    );
  }
}
