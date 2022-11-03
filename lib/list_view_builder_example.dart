import 'dart:math';

import 'package:flutter/material.dart';
import "random_image.dart";
import "list_tile_learn.dart";

class MyListViewBuilderLearn extends StatefulWidget {
  const MyListViewBuilderLearn({super.key});

  @override
  State<MyListViewBuilderLearn> createState() => _ListViewBuilderLearn1State();
}

class _ListViewBuilderLearn1State extends State<MyListViewBuilderLearn>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Random Image Generator",
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(fontSize: 20, fontWeight: FontWeight.w300),
        ),
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return MyWidget();
      })),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.black12,
        child: TabInfo(),
      ),
    );
  }
}
