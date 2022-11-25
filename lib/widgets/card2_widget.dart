import 'package:flutter/material.dart';

class Card2Widget extends StatelessWidget {
  final String imageUrl;

  const Card2Widget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Colors.grey.withOpacity(0.2),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            image: NetworkImage(
              imageUrl,
            ),
            fadeInDuration: const Duration(milliseconds: 300),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Un hermoso paisaje'),
          )
        ],
      ),
    );
  }
}
