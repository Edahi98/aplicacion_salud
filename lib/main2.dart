import 'package:ejemplo1/segundapagina.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera app',
      home: ClasePrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ClasePrincipal extends StatelessWidget {
  const ClasePrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return crearScaffold(context);
  }

  Widget crearScaffold(BuildContext context) {
    return Scaffold(
      appBar: crearAppBar(context),
      body: crearBody(context),
      drawer: crearDrawer(context),
    );
  }

  crearBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          crearTarjeta(context, 'Tarjeta 1', 'Mi primer tarjeta del body', 'assets/buzz.jpg'),
          crearTarjeta(context, 'Tarjeta 2', 'Mi segunda tarjeta del body', 'assets/jessy.jpg'),
          crearTarjeta(context, 'Tarjeta 3', 'Mi tercera tarjeta del body', 'assets/marcianitos.jpg'),
        ],
      ),
    );
  }

  crearAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Mi primer app'),
      backgroundColor: Colors.green,
      actions: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Hola mundo'),
                duration: Duration(seconds: 5),
              ),
            );
          },
          icon: Icon(Icons.house),
        ),
      ],
    );
  }

  crearDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            child: Text(
              'Encabezado del drawer',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Navegando aHome'),
                  duration: Duration(seconds: 5),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Navegando a Settings'),
                  duration: Duration(seconds: 5),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text('Contacts'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Navegando a Constacts'),
                  duration: Duration(seconds: 5),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget crearTarjeta(BuildContext context, String titulo, String descripcion, String rutaImagen) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 10.0),
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SegundaPagina(titulo: 'Detalle de $titulo'),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                rutaImagen,
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    descripcion,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
