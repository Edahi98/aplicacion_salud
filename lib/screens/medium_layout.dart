import 'package:flutter/material.dart';
import '../widgets/health_card.dart';
import '../widgets/drawer_menu.dart';

class MediumLayout extends StatelessWidget {
  const MediumLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Health Tracker - Tablet")),
      drawer: const DrawerMenu(),
      body: GridView.count(
        crossAxisCount: 2, // 2 columnas
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          HealthCard(
            title: "Pasos",
            subtitle: "Registro de tus pasos diarios",
            imagePath: "assets/pasos.png",
          ),
          HealthCard(
            title: "Agua",
            subtitle: "Cantidad de agua consumida",
            imagePath: "assets/agua.png",
          ),
          HealthCard(
            title: "Salud",
            subtitle: "Indicadores de salud general",
            imagePath: "assets/salud.png",
          ),
        ],
      ),
    );
  }
}
