import 'package:flutter/cupertino.dart';

class ProviderTheme extends ChangeNotifier {
  bool _tema = true;

  ProviderTheme();
  bool get tema => _tema;
  set tema(bool x) {
    _tema = x;
    notifyListeners();
  }
}
