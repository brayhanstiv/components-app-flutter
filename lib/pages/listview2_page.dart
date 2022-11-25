// Packages
import 'package:flutter/material.dart';

class ListView2Page extends StatelessWidget {
  const ListView2Page({super.key});

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
        title: const Text('List View Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
