import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stan Lee'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.indigo[900],
              ),
            )
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 120,
            backgroundImage: NetworkImage(
              'https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg',
            ),
          ),
        ));
  }
}
