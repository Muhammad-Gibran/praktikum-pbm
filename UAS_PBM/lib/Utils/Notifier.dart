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

class Fav extends ChangeNotifier {
  bool _fav = true;
  Icon _favicon = Icon(Icons.favorite, color: Colors.black);
  bool get fav => _fav;
  Icon get favicon => _favicon;

  fav2() {
    fav
        ? [
            _fav = false,
            _favicon = Icon(Icons.favorite, color: Colors.red[100])
          ]
        : [_fav = true, _favicon = Icon(Icons.favorite, color: Colors.black)];
    notifyListeners();
  }
}
