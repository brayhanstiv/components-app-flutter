import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  int red = 0;
  int green = 0;
  int blue = 0;
  double width = 0.0;
  double height = 0.0;

  void randomValues() {
    red = Random().nextInt(255);
    green = Random().nextInt(255);
    blue = Random().nextInt(255);
    width = Random().nextInt(300).toDouble() + 50;
    height = Random().nextInt(300).toDouble() + 50;
  }

  @override
  void initState() {
    randomValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          height: width,
          width: height,
          decoration: BoxDecoration(
              color: Color.fromRGBO(red, green, blue, 1),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            randomValues();
          });
        },
        child: const Icon(Icons.play_circle_outline),
      ),
    );
  }
}
