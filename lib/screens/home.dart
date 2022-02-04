import 'package:flutter/material.dart';
import 'package:preference/prefereces.dart';
import 'package:preference/screens/drawer_custom.dart';

class HomeApp extends StatelessWidget {
  static const String router = 'home';

  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final x = Preferences.datapreference;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(x.nombre.toString()),
            Text(x.genero == 1 ? 'masculino' : 'Femenino'),
            Text(x.tema == true ? 'Dark' : 'Light'),
          ],
        ),
      ),
      drawer: const DrawerCustom(),
    );
  }
}
