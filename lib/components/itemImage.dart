import 'package:flutter/material.dart';
import 'package:memesapp/screens/downloadScreen.dart';

// ignore: camel_case_types, must_be_immutable
class itemImage extends StatefulWidget {
  String imagePath;
  dynamic snapshot;
  int index;
  itemImage(
      {Key? key,
      required this.imagePath,
      required this.snapshot,
      required this.index})
      : super(key: key);

  @override
  State<itemImage> createState() => _itemImageState();
}

// ignore: camel_case_types
class _itemImageState extends State<itemImage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.5,
      // height: widget.snapshot.data!.data!.memes!.first.height!.toDouble(),
      // width: widget.snapshot.data!.data!.memes!.first.width!.toDouble(),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.black,
        ),
        image: DecorationImage(
          image: NetworkImage(widget.imagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Icon(
                Icons.cancel_outlined,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => DownloadingScreen(
                  imageUrl: widget.imagePath,
                  snapshot: widget.snapshot,
                  index: widget.index,
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Icon(
                Icons.download_outlined,
                size: 40,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
