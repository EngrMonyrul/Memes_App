import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:memesapp/screens/ItemScreen.dart';
import 'package:provider/provider.dart';

import '../models/MemesModel.dart';
import '../providers/Api_Call.dart';
import 'LoadingScreen.dart';

class BodyElements extends StatefulWidget {
  const BodyElements({super.key});

  @override
  State<BodyElements> createState() => _BodyElementsState();
}

class _BodyElementsState extends State<BodyElements> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApiCall>(
      builder: (context, value, child) {
        return Expanded(
          child: FutureBuilder<MemesModel>(
            future: value.getMemesData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MemeScreen(snapshot);
              } else {
                return LoadingScreen();
              }
            },
          ),
        );
      },
    );
  }

  GridView MemeScreen(AsyncSnapshot<MemesModel> snapshot) {
    return GridView.builder(
      itemCount: snapshot.data!.data!.memes!.length,
      primary: true,
      padding: const EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => ItemScreen(
                          index: index,
                          imagePath:
                              snapshot.data!.data!.memes![index].url.toString(),
                        ))));
            setState(() {});
          },
          child: Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 147, 253, 7).withOpacity(0.3),
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                            '${snapshot.data!.data!.memes![index].url}'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      '${snapshot.data!.data!.memes![index].name}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
