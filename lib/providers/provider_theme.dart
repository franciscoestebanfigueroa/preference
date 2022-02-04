import 'package:flutter/cupertino.dart';
import 'package:preference/prefereces.dart';

class ProviderTheme extends ChangeNotifier {
  bool _tema = true;

  bool get tema {
    _tema = Preferences.datapreference.tema;
    return _tema;
  }

  set tema(bool x) {
    _tema = x;
    Preferences.datapreference.tema = _tema;
    print(x);
    notifyListeners();
  }
}
