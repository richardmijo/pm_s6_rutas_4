import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onSettingsTap;
  final VoidCallback onContactTap;

  const CustomDrawer(
      {super.key,
      required this.onHomeTap,
      required this.onSettingsTap,
      required this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text(
                'Menu principal',
                style: TextStyle(color: Colors.white, fontSize: 24),
              )),
              _buildDrawerItem(icon: Icons.home, text: 'Inicio', onTap: onHomeTap),
              _buildDrawerItem(icon: Icons.settings, text: 'Configuracion', onTap: onSettingsTap),
              _buildDrawerItem(icon: Icons.contact_emergency, text: 'Contactos', onTap: onContactTap),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ListTile(
          leading: Icon(icon, color: Colors.blue,),
          title: Text(text,
          style: TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: onTap,
        ),
      );
  }
}
