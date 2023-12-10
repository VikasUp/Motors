import 'dart:convert';
import 'package:http/http.dart' as http;



class LoginRepository {
  login(String user_email, String user_password,String api_key) async{
    var res = http.post("https://motorscar.app/index.php/rest/users/login" as Uri,
    headers: {},
    body:{"user_email": user_email, "user_password": user_password, "api_key": api_key });
    final data =json.decode(res.toString());
    if (data['message']== "admin Logged in"|| data['message'== "user logged in"]){
      return data;
    }else{
      return "auth problem";
    }
  }
}
