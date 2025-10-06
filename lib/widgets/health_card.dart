import 'package:flutter/material.dart';
import '../screens/second_page.dart';

class HealthCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const HealthCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Image.asset(imagePath, width: 40),
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => SecondPage(title: title)),
          );
        },
      ),
    );
  }
}
