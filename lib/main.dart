// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/pages/home_page.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();
//open a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow),
          appBarTheme: AppBarTheme(backgroundColor: Colors.yellow)),
      home: HomePage(),
    );
  }
}
