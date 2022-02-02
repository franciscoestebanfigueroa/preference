import 'package:flutter/material.dart';
import 'package:preference/screens/home.dart';
import 'package:preference/screens/nose.dart';
import 'package:preference/screens/seting.dart';

class DrawerCustom extends StatelessWidget {
  static String router = 'drawercustom';

  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.zero,
        child: Drawer(
          semanticLabel: 'titulo',
          child: Container(
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.blue,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, HomeApp.router);
                        },
                        child: const Text(
                          'Home  ',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, SetingApp.router);
                        },
                        child: const Text(
                          'Data  ',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (BuildContext context, _, __) {
                                    return const NoSeApp();
                                  },
                                  transitionDuration:
                                      const Duration(milliseconds: 800),
                                  transitionsBuilder: (___,
                                      Animation<double> animation,
                                      ____,
                                      Widget child) {
                                    //TODO:eliminar
                                    print(animation.value);
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  }));
                        },
                        child: const Text(
                          'no se !!!',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
