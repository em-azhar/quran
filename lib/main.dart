import 'package:flutter/material.dart';
import 'package:quran/settings/my_behaviour.dart';
import 'package:quran/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      scrollBehavior: MyBehaviour(),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
