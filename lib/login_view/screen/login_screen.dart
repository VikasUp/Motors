import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:saudi_cars/login_view/login_bloc/login_bloc.dart';
import 'package:saudi_cars/login_view/login_bloc/login_state.dart';
import 'package:saudi_cars/login_view/screen/login_controller.dart';
import 'package:saudi_cars/routing/app_routes.dart';

class LoginPage extends StatefulWidget {
  get repository => [];
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc loginBloc;
  int? userId;
  bool signInPressed = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  LoginController controller = Get.put(LoginController());
  final TextEditingController api_keyController = TextEditingController();
  @override
  void initState() {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, '/otpLoginScreen');
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/on_boarding_3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 75.0,
              left: 0.0,
              right: 150.0,
              child: Center(
                child: Text(
                  'Lets Start A New\n Experience',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Card(
                  elevation: 150.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30.0)),
                  ),
                  color: const Color.fromARGB(255, 28, 105, 31),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40.0, horizontal: 40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: signInPressed ? Colors.white : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Container(
                                height: 50.0,
                                width: double.infinity,
                                child: TextFormField(
                                  controller:
                                      controller.user_emailController.value,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12.0),
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                    labelStyle:
                                        const TextStyle(color: Colors.black),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 16.0),
                                    isDense: true,
                                    alignLabelWithHint: true,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 5),
                                      child: Image.asset(
                                        'assets/images/user.png',
                                        width: 5.0,
                                        height: 5.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Container(
                                height: 50.0,
                                width: double.infinity,
                                child: TextFormField(
                                  controller:
                                      controller.user_passwordController.value,
                                  obscureText: true,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12.0),
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle:
                                        const TextStyle(color: Colors.black),
                                    labelStyle:
                                        const TextStyle(color: Colors.white),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 16.0),
                                    isDense: true,
                                    alignLabelWithHint: true,
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 5),
                                      child: Image.asset(
                                        'assets/images/padlock.png',
                                        width: 5.0,
                                        height: 4.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.0),
                              const Text(
                                'OR',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          height: 50.0,
                          width: double.infinity,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 17.0),
                            decoration: InputDecoration(
                              hintText: 'Login via OTP',
                              hintStyle: const TextStyle(color: Colors.black),
                              labelStyle: const TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              alignLabelWithHint: true,
                              prefixIconConstraints: const BoxConstraints(
                                  minWidth: 0, minHeight: 0),
                              prefixIcon: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 34.0),
                                child: Icon(
                                  Icons.check,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Obx(() {
                                  return InkWell(
                                    onTap: () async {
                                      controller.loginApi(context);
                                      if (controller.isLoggedIn) {}
                                    },
                                    child: controller.loading.value
                                        ? const CircularProgressIndicator(
                                            strokeWidth: 2)
                                        : Container(
                                            height: 45,
                                            color: Colors.white,
                                            child: const Center(
                                              child: Text('Login'),
                                            ),
                                          ),
                                  );
                                }),
                              ),
                              Container(
                                width: 0.0,
                                height: 30.0,
                                color: Colors.white,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.otpLogin);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: signInPressed
                                          ? Colors.green
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.transparent,
                                        elevation: 0,
                                      ),
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          color: signInPressed
                                              ? Colors.white
                                              : Colors.green,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
