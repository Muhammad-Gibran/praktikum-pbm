import 'package:flutter/material.dart';

class Hide extends ChangeNotifier {
  bool _hide = true;
  Icon _eye = Icon(Icons.visibility_off);
  bool get hide => _hide;
  Icon get eye => _eye;

  hide2() {
    hide
        ? [_hide = false, _eye = Icon(Icons.remove_red_eye_outlined)]
        : [_hide = true, _eye = Icon(Icons.visibility_off)];
    notifyListeners();
  }
}
