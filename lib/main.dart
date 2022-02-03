import 'package:flutter/material.dart';
import 'package:preference/prefereces.dart';
import 'package:preference/screens/screens.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding();

  Preferences.prefs = await SharedPreferences.getInstance();
  Preferences.prefs.getInt('genero') ?? 1;
  Preferences.prefs.getString('nombre') ?? 'nombre';
  Preferences.prefs.getBool('tema') ?? true;

//  int counter = (prefs.getInt('counter') ?? 0) + 1;
//  print('Pressed $counter times.');
//  await prefs.setInt('counter', counter);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeApp.router,
      routes: rutas,
    );
  }
}
