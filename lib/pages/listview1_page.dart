// Packages
import 'package:flutter/material.dart';

class ListView1Page extends StatelessWidget {
  const ListView1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      'Aquaman',
      'Superman',
      'Batman',
      'Mujer Maravilla',
      'Flash'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (option) => ListTile(
                  title: Text(option),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
