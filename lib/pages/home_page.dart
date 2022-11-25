// Packages
import 'package:flutter/material.dart';

// Constants
import 'package:components/common/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, options[index].route);
            },
            leading: Icon(options[index].icon),
            title: Text(options[index].title),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
