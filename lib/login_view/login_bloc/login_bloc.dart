import 'package:bloc/bloc.dart';
import 'package:saudi_cars/data/repositories/login_repository.dart';
import 'package:saudi_cars/login_view/login_bloc/login_event.dart';
import 'package:saudi_cars/login_view/login_bloc/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{ 
  LoginRepository repo;
  LoginBloc(LoginState initialState, this.repo): super(initialState);

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{
    var pref = await SharedPreferences.getInstance();
   if (event is StartEvent){
    yield LoginInitial();
   }else if( event is LoginButtonPressed){
    yield LoginLoading();
    var data = await repo.login(event.user_email, event.user_password, event.api_key);
    if(data['type']==0){
      pref.setString("user_id", data['user_id']);
      pref.setString("user_email", data['user_email']);
      pref.setString("user_password", data['user_password']);
      pref.setString("api_key", data['api_key']);
      yield LoginSuccess();
    }
   }
  }
}