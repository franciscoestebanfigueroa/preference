//_incrementCounter() async {
//  SharedPreferences prefs = await SharedPreferences.getInstance();
//  int counter = (prefs.getInt('counter') ?? 0) + 1;
//  print('Pressed $counter times.');
//  await prefs.setInt('counter', counter);
//}
//

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  Preferences._();
  static Preferences datapreference = Preferences._();

  static late SharedPreferences _prefs;

  static bool _tema = true;
  static String _nombre = 'nombre';
  static int _genero = 1;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get tema {
    return _prefs.getBool('tema') ?? true;
  }

  set tema(bool x) {
    _prefs.setBool('tema', x);
    _tema = x;
  }

  String get nombre {
    return _prefs.getString('nombre') ?? 'no hay data';
  }

  set nombre(String x) {
    _prefs.setString('nombre', x);
    _nombre = x;
  }

  int get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int x) {
    _prefs.setInt('genero', x);
    _genero = x;
  }
}
