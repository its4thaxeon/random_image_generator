import 'dart:math';

import "package:flutter/material.dart";
import "random_image.dart";

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  void buttonPress0() {
    setState(() {
      counter++;
    });
  }

  void buttonPress1() {
    setState(() {
      counter += 5;
    });
  }

  void buttonPress2() {
    setState(() {
      counter += 50;
    });
  }

  void buttonPress3() {
    setState(() {
      counter += 500;
    });
  }

  void buttonPress4() {
    setState(() {
      counter += 5000;
    });
  }

  int x = Random().nextInt(5);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: RandomHeight100Image(),
              minVerticalPadding: 7,
              onTap: () {
                if (x == 0) {
                  buttonPress0();
                } else if (x == 1) {
                  buttonPress1();
                } else if (x == 2) {
                  buttonPress2();
                } else if (x == 3) {
                  buttonPress3();
                } else if (x == 4) {
                  buttonPress4();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TabInfo extends StatelessWidget {
  const TabInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Card(
        elevation: 20,
        color: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Click the picture to change.",
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            const Icon(Icons.arrow_upward_rounded)
          ],
        ),
      ),
    );
  }
}
