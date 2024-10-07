part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginCreateEvent extends LoginEvent {
  LoginCreateEvent(
      {required this.userEmail,
      required this.userRole,
      required this.userPassword});
  final String userEmail;
  final String userRole;
  final String userPassword;
}
