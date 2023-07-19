import 'package:flutter/material.dart';
import '../components/BodyElements.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: screenSize.height * 0.05,
                width: screenSize.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: TextField(
                  cursorColor: Colors.grey,
                  cursorHeight: 23,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.search_outlined,
                        size: 25,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
              const BodyElements()
            ],
          ),
        ),
      ),
    );
  }
}
