import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  final String titulo;

  const SegundaPagina({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.green,
      ), // AppBar
      body: Center(
        child: Text(
          'Bienvenido a $titulo de Edahi Yaxquin Avila Garcia',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ), // Text
      ), // Center
    ); // Scaffold
  }
}