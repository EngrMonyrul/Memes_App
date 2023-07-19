import 'package:flutter/material.dart';
import 'package:memesapp/providers/Api_Call.dart';
import 'package:memesapp/screens/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiCall()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Memes Club',
            theme: ThemeData(
              brightness: Brightness.light,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
              ),
            ),
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
