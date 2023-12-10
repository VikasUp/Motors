import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:saudi_cars/constants/webservices/sky_api_config.dart';
import 'package:saudi_cars/data/model/login_model.dart';
import 'package:saudi_cars/presentation/otp_login_page/screen/otp_login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final user_emailController = TextEditingController().obs;
  final user_passwordController = TextEditingController().obs;
  late LoginEmailModel loginEmailModel;
  RxBool loading = false.obs;
  bool get isLoggedIn => _isLoggedIn;
  bool _isLoggedIn = false;
  static const String _isLoggedInKey = 'isLoggedIn';

  Future<void> saveLoginStatus(bool isLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isLoggedInKey, isLoggedIn);
  }

  Future<bool> getLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }

  void loginApi(BuildContext context) async {
    loading.value = true;
    try {
      final response = await post(
        Uri.parse('${Constants.baseUrl}${Constants.login}'),
        body: {
          'user_email': user_emailController.value.text,
          'user_password': user_passwordController.value.text,
          'api_key': Constants.apiKey,
        },
      );

      var data = jsonDecode(response.body);
        print(data);
      if (response.statusCode == 200) {
        _isLoggedIn = true;
        await saveLoginStatus(true);
        Get.snackbar(
          'Login Successful',
          'You have successfully logged in!',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );

        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpLoginPage(),
          ),
        );
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    } finally {
      loading.value = false;
    }
  }
}
