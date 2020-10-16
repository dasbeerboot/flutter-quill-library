import 'package:flutter/material.dart';
import 'web_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quill editor example',
      theme: ThemeData.light(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}