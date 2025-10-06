import 'package:flutter/material.dart';
import '../widgets/health_card.dart';
import '../widgets/drawer_menu.dart';

class LargeLayout extends StatelessWidget {
  const LargeLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Menú lateral fijo
          const SizedBox(width: 250, child: DrawerMenu()),
          // Contenido principal
          Expanded(
            child: Scaffold(
              appBar: AppBar(title: const Text("Health Tracker - Escritorio")),
              body: GridView.count(
                crossAxisCount: 3, // 3 columnas
                padding: const EdgeInsets.all(24),
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                children: const [
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
            ),
          ),
        ],
      ),
    );
  }
}
