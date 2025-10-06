import 'package:flutter/material.dart';
import 'screens/large_layout.dart';
import 'screens/medium_layout.dart';
import 'screens/small_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Tracker',
      debugShowCheckedModeBanner: false,
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const SmallLayout();
        } else if (constraints.maxWidth < 1024) {
          return const MediumLayout();
        } else {
          return const LargeLayout();
        }
      },
    );
  }
}
