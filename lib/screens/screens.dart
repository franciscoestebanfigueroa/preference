export 'package:preference/screens/drawer_custom.dart';
export 'package:preference/screens/home.dart';
export 'package:preference/screens/seting.dart';
export 'package:preference/screens/nose.dart';
import 'package:flutter/widgets.dart';
import 'package:preference/screens/drawer_custom.dart';
import 'package:preference/screens/home.dart';
import 'package:preference/screens/nose.dart';
import 'package:preference/screens/seting.dart';

Map<String, Widget Function(BuildContext)> rutas = {
  DrawerCustom.router: (_) => const DrawerCustom(),
  HomeApp.router: (_) => const HomeApp(),
  SetingApp.router: (_) => const SetingApp(),
  NoSeApp.router: (_) => const NoSeApp()
};
