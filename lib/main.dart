import 'package:flutter/material.dart';

import 'ui/gradient_container.dart';

const colors = [
  Color.fromARGB(255, 25, 2, 64),
  Color.fromARGB(255, 44, 2, 117)
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  MaterialApp build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors),
      ),
    );
  }
}
