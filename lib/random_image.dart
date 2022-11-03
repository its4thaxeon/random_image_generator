import "package:flutter/material.dart";
import "dart:math";

class RandomHeight100Image extends StatelessWidget {
  RandomHeight100Image({super.key, this.height = 200});

  final double height;
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Image.network(
          "https://picsum.photos/200/300?random=${Random().nextInt(100000)}",
          height: 400,
          fit: BoxFit.fill),
    );
  }
}
