import 'package:flutter/material.dart';
import 'package:preference/screens/drawer_custom.dart';

class NoSeApp extends StatelessWidget {
  static const String router = 'nose';

  const NoSeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.orange,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text('no se')),
      ),
      drawer: const DrawerCustom(),
    );
  }
}
