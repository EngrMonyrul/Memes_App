import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/MemesModel.dart';
import '../providers/Api_Call.dart';
import 'ifHasData.dart';

// ignore: camel_case_types, must_be_immutable
class itemBarScreen extends StatefulWidget {
  String imagePath;
  int index;
  itemBarScreen({Key? key, required this.imagePath, required this.index})
      : super(key: key);

  @override
  State<itemBarScreen> createState() => _itemBarScreenState();
}

// ignore: camel_case_types
class _itemBarScreenState extends State<itemBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(child: Consumer<ApiCall>(
        builder: (context, value, child) {
          return Expanded(
            child: FutureBuilder<MemesModel>(
              future: value.getMemesData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ifHasData(
                    imagePath: widget.imagePath,
                    snapshot: snapshot,
                    index: widget.index,
                  );
                } else {
                  return Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    child: const CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  );
                }
              },
            ),
          );
        },
      )),
    );
  }
}
