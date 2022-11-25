// Packages
import 'package:components/pages/listview_builder_page.dart';
import 'package:flutter/material.dart';

// Pages
import 'package:components/pages/slider_page.dart';
import 'package:components/pages/home_page.dart';
import 'package:components/pages/alert_page.dart';
import 'package:components/pages/card_page.dart';
import 'package:components/pages/animated_page.dart';
import 'package:components/pages/avatar_page.dart';
import 'package:components/pages/inputs_page.dart';
import 'package:components/pages/listview1_page.dart';
import 'package:components/pages/listview2_page.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  "/": (context) => const HomePage(),
  "/avatar": (context) => const AvatarPage(),
  "/alert": (context) => const AlertPage(),
  "/card": (context) => const CardPage(),
  "/inputs": (context) => const InputsPage(),
  "/animated": (context) => const AnimatedPage(),
  "/listview1": (context) => const ListView1Page(),
  "/listview2": (context) => const ListView2Page(),
  "/slider": (context) => const SliderPage(),
  "/listviewbuilder": (context) => const ListViewBuilderPage(),
};
