// Packages
import 'package:components/widgets/card2_widget.dart';
import 'package:flutter/material.dart';

// Widgets
import 'package:components/widgets/card_widget.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardWidget(),
          SizedBox(height: 10),
          Card2Widget(
              imageUrl:
                  'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          Card2Widget(
              imageUrl:
                  'https://images.pexels.com/photos/235621/pexels-photo-235621.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          Card2Widget(
              imageUrl:
                  'https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
