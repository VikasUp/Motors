import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudi_cars/data/repositories/login_repository.dart';
import 'package:saudi_cars/login_view/login_bloc/login_bloc.dart';
import 'package:saudi_cars/login_view/login_bloc/login_state.dart';
import 'package:saudi_cars/routing/app_routes.dart';
import 'package:saudi_cars/routing/routing.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(LoginInitial(), LoginRepository())),
      ],
      child: MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.white, 
        ),
        initialRoute: AppRoutes.splash,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
