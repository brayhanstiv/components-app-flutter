// Packages
import 'package:flutter/material.dart';

// Common
import 'package:components/common/theme.dart';
import 'package:components/common/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      theme: themeLight,
    );
  }
}
