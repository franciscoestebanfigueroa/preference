import 'package:flutter/material.dart';
import 'package:preference/prefereces.dart';
import 'package:preference/providers/provider_theme.dart';
import 'package:preference/screens/screens.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();
  //  int counter = (prefs.getInt('counter') ?? 0) + 1;
//  print('Pressed $counter times.');
//  await prefs.setInt('counter', counter);

  return runApp(const ProviderMyApp());
}

class ProviderMyApp extends StatelessWidget {
  const ProviderMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderTheme>(create: (context) {
          return ProviderTheme();
        })
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pthemedata = Provider.of<ProviderTheme>(context);

    return MaterialApp(
      theme: pthemedata.tema ? ThemeData.dark() : ThemeData.light(),
      initialRoute: HomeApp.router,
      routes: rutas,
    );
  }
}
