import 'package:flutter/material.dart';
import 'package:preference/prefereces.dart';
import 'package:preference/providers/provider_theme.dart';

import 'package:preference/screens/drawer_custom.dart';
import 'package:provider/provider.dart';

class SetingApp extends StatefulWidget {
  static String router = 'seting';

  const SetingApp({Key? key}) : super(key: key);

  @override
  State<SetingApp> createState() => _SetingAppState();
}

class _SetingAppState extends State<SetingApp> {
  @override
  Widget build(BuildContext context) {
    final xprovider = Provider.of<ProviderTheme>(context, listen: false);
    return Scaffold(
        appBar: AppBar(),
        drawer: const DrawerCustom(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Seting',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SwitchListTile(
                title: const Text(
                  'Tema',
                  style: TextStyle(fontSize: 25),
                ),
                value: Preferences.datapreference.tema,
                onChanged: (value) {
                  setState(() {
                    xprovider.tema = value;
                  });
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                title: const Text('Masculino'),
                groupValue: Preferences.datapreference.genero,
                onChanged: (value) {
                  setState(() {
                    Preferences.datapreference.genero = 1;
                    print(value);
                  });
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                title: const Text('Femenino'),
                groupValue: Preferences.datapreference.genero,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    //genero = value ?? 2;
                    Preferences.datapreference.genero = 2;
                  });
                },
              ),
              const Divider(),
              TextField(
                onChanged: (value) {
                  setState(() {
                    Preferences.datapreference.nombre = value;
                  });
                },
                decoration: const InputDecoration(label: Text('Nombre')),
              )
            ],
          ),
        ));
  }
}
