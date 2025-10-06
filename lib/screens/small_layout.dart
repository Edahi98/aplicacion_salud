import 'package:flutter/material.dart';
import '../widgets/health_card.dart';
import '../widgets/drawer_menu.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Health Tracker - Móvil")),
      drawer: const DrawerMenu(),
      body: ListView(
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
