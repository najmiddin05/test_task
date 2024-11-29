import 'package:flutter/material.dart';
import 'package:test_task/feature/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
