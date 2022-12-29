import 'package:shared_preferences/shared_preferences.dart';

class SaveLoad {
  static late SharedPreferences _preferences;
  static const _keyUsername = 'username';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUsername(String username) async =>
      await _preferences.setString(_keyUsername, username);

  static String? getUsername() => _preferences.getString(_keyUsername);
}

class SaveLoadIcon {
  static late SharedPreferences _preferences;
  static const _keyIcon = 'icon';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setIcon(String icon) async =>
      await _preferences.setString(_keyIcon, icon);

  static String? getIcon() => _preferences.getString(_keyIcon);
}
