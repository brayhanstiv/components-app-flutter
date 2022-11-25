// Packages
import 'package:flutter/material.dart';

// Models
import 'package:components/models/option.dart';

// Colors
const Color primaryColor = Colors.indigo;

List<Option> options = [
  Option(
    icon: Icons.list_alt_rounded,
    title: 'Listview tipo 1',
    route: '/listview1',
  ),
  Option(
    icon: Icons.list,
    title: 'Listview tipo 2',
    route: '/listview2',
  ),
  Option(
    icon: Icons.add_alert_outlined,
    title: 'Alertas',
    route: '/alert',
  ),
  Option(
    icon: Icons.card_membership_outlined,
    title: 'Tarjetas',
    route: '/card',
  ),
  Option(
    icon: Icons.supervised_user_circle_outlined,
    title: 'Circle Avatar',
    route: '/avatar',
  ),
  Option(
    icon: Icons.play_circle_filled_rounded,
    title: 'Animated Container',
    route: '/animated',
  ),
  Option(
    icon: Icons.input_rounded,
    title: 'Text Inputs',
    route: '/inputs',
  ),
  Option(
    icon: Icons.slow_motion_video_rounded,
    title: 'Slider and Checks',
    route: '/slider',
  ),
  Option(
    icon: Icons.build_circle_outlined,
    title: 'Infinite Scroll and Pull to refresh',
    route: '/listviewbuilder',
  ),
];
