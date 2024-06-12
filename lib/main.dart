import 'package:flutter/material.dart';
import 'package:todo_flutter_application/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const MyApp());

  // init the hive
  await Hive.initFlutter();
  // open box
  var box = await Hive.openBox('mybox');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.yellow,
          )),
    );
  }
}
