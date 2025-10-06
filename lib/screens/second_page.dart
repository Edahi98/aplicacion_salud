import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    // Datos fijos de ejemplo (se reemplazarán con datos del smartwatch más adelante)
    int pasos = 8500;
    double longitudPaso = 0.75; // en metros (valor estimado)
    double distanciaKm = (pasos * longitudPaso) / 1000;
    double caloriasQuemadas = pasos * 0.04;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Icono + título
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.directions_walk, size: 40, color: Colors.blue),
                    SizedBox(width: 10),
                    Text(
                      "Moverse",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // �� Número de pasos
                Text(
                  "Pasos: $pasos",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                // �� Distancia
                Text(
                  "Distancia: ${distanciaKm.toStringAsFixed(2)} km",
                  style: const TextStyle(fontSize: 20, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                // �� Calorías quemadas
                Text(
                  "Calorías: ${caloriasQuemadas.toStringAsFixed(0)} kcal",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
