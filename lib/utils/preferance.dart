import 'package:saudi_cars/constants/webservices/sky_api_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<bool> setUserId(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setString(Constants.userId, userId.toString());
    } catch (e) {
      print('Error setting user ID: $e');
      return false;
    }
  }

  static Future<bool> setUserName(String userName) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setString(Constants.userName, userName.toString());
    } catch (e) {
      print('Error setting user name: $e');
      return false;
    }
  }

  static Future<bool> setLoginStatus(bool status) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setBool(Constants.isUserLoginStatus, true);
    } catch (e) {
      print('Error setting user login status: $e');
      return false;
    }
  }

  Future<String?> getUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    print(prefs.getString(Constants.userId).toString());
    return await prefs.getString(Constants.userId).toString();
  }
}
