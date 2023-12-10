import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
    @override
  List<Object?> get props => throw [];
}

class StartEvent extends LoginEvent{

}

class LoginButtonPressed extends LoginEvent {
  final String user_email;
  final String user_password;
  final String  api_key;
  const LoginButtonPressed({
    required this.user_email,
    required this.user_password,
    required this.api_key,
  });

  @override
  List<Object> get props => [ user_email, user_password, api_key];
  @override
  String toString() =>
      'LoginButtonPressed { username: $user_email, password: $user_password, api_key: api_key }';
}
