//_incrementCounter() async {
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//  int counter = (prefs.getInt('counter') ?? 0) + 1;
//  print('Pressed $counter times.');
//  await prefs.setInt('counter', counter);
//}
//

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences prefs;

  static bool _tema = true;
  static String _nombre = 'nombre';
  static int _genero = 1;

  bool get tema {
    return _tema;
  }

  settema(bool x) async {
    await prefs.setBool('tema', x);
    _tema = x;
  }

  String get nombre {
    return _nombre;
  }

  setnombre(String x) async {
    await prefs.setString('nombre', x);
    _nombre = x;
  }

  int get genero {
    return _genero;
  }

  setgenero(int x) async {
    await prefs.setInt('genero', x);
    _genero = x;
  }
}
