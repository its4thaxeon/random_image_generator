import 'package:flutter/material.dart';
import 'list_tile_learn.dart';
import 'list_view_builder_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ListViewBuilderLearn1(),
    );
  }
}
