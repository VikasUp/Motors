// import 'dart:convert';
// import 'package:saudi_cars/api/api_service.dart';
// import 'package:saudi_cars/data/model/login_request.dart';
// import 'package:saudi_cars/data/model/login_response.dart';

// abstract class LoginDatasource {
//   Future<LoginResponse> loginUser(String user_email, String user_password, String api_key);
// }

// class LoginDatasourceImpl implements LoginDatasource {
//   final AuthService _authService;

//   LoginDatasourceImpl(this._authService);

//   @override
//   Future<LoginResponse> loginUser(String user_email, String user_password, String api_Key) async {
//     try {
//       final loginRequest = LoginRequest(user_email: user_email, user_password: user_password, api_key: api_Key);
//       final response = await _authService.authenticateUser(loginRequest.toJson());
//       final responseData = jsonDecode(response.body);

//       if (response.statusCode == 200) {
//         return LoginResponse.fromJson(responseData);
//       } else {
//         throw Exception('Failed to login. Status code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error: $e');
//       throw Exception('Failed to connect to the server. Please try again later.');
//     }
//   }
// }