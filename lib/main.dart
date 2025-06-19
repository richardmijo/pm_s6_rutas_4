import 'package:flutter/material.dart';
import 'package:pm_s6_rutas_4/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación',
      initialRoute: AppRoutes.login,
      onGenerateRoute: AppRoutes.generateRoute
    );
  }
}

/* class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToPageContac(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ContactPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contactos'),
              onTap: () => _goToPageContac(context),
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => _goToPageContac(context),
            child: Text('Ir a contactos')),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de contacto'),
      ),
      body: Center(
        child: Text('Pagina de contactos'),
      ),
    );
  }
}
*/
