import 'package:flutter/material.dart';
import 'package:preference/screens/drawer_custom.dart';

class HomeApp extends StatelessWidget {
  static const String router = 'home';

  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('home'),
      ),
      drawer: const DrawerCustom(),
    );
  }
}
