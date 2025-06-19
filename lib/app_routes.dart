import 'package:flutter/material.dart';
import 'package:pm_s6_rutas_4/contact_page.dart';
import 'package:pm_s6_rutas_4/home_page.dart';
import 'package:pm_s6_rutas_4/loing_page.dart';
import 'package:pm_s6_rutas_4/settings_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';
  static const String settings = '/settings';
  static const String contact = '/contact';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );

      case AppRoutes.settings:
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );

      case AppRoutes.contact:
        return MaterialPageRoute(
          builder: (context) => ContactPage(),
        );
      
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('Ruta no encontrada'),
            ),
          ),
        );
    }
  }
}
