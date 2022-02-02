import 'package:flutter/material.dart';
import 'package:preference/screens/drawer_custom.dart';

class SetingApp extends StatelessWidget {
  static String router = 'seting';

  const SetingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerCustom(),
      body: const Center(
        child: Text('seting'),
      ),
    );
  }
}
