import 'package:flutter/material.dart';
import 'package:ontastore/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFc99506), // New seed color
          primary: const Color(0xFFc99506),   // Primary color
          secondary: const Color(0xFFc99506), // Secondary color
          background: const Color(0xFFf5d273), // Background color as light yellow
        ),
        scaffoldBackgroundColor: const Color(0xFFf5d273), // Set scaffold background to match
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
