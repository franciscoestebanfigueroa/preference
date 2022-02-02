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
                DrawerHeader(
                    child: Container(
                  color: Colors.red,
                )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      _Lineas(
                          icon: Icons.ac_unit,
                          title: 'Home',
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeApp();
                            }));
                          }),
                      _Lineas(
                          icon: Icons.person_pin,
                          title: 'Gente',
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(context, SetingApp.router);
                          }),
                      _Lineas(
                          icon: Icons.build,
                          title: 'Seting',
                          onTap: () {
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
                          }),
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

class _Lineas extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _Lineas(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
