// Packages
import 'package:flutter/material.dart';

// Constants
import 'package:components/common/constants.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double data = 100;
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            value: data,
            activeColor: primaryColor,
            onChanged: active
                ? (value) {
                    setState(() {
                      data = value;
                    });
                  }
                : null,
          ),
          CheckboxListTile(
            value: active,
            activeColor: primaryColor,
            title: const Text('Activar Slider'),
            onChanged: (value) {
              setState(() {
                active = value!;
              });
            },
          ),
          SwitchListTile(
            value: active,
            activeColor: primaryColor,
            title: const Text('Activar Slider'),
            onChanged: (value) {
              setState(() {
                active = value;
              });
            },
          ),
          Image(
            image: const NetworkImage(
                'https://i0.wp.com/blog.claroshop.com/wp-content/uploads/2021/07/batman-6272544_1920.jpg?resize=616%2C885&ssl=1'),
            fit: BoxFit.contain,
            width: data,
          )
        ],
      ),
    );
  }
}
