import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "Menú Principal",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Perfil del usuario"),
          ),
          ListTile(leading: Icon(Icons.flag), title: Text("Objetivos")),
          ListTile(leading: Icon(Icons.info), title: Text("Acerca de")),
        ],
      ),
    );
  }
}
