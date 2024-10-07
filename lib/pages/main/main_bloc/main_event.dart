part of 'main_bloc.dart';

abstract class MainEvent {}

class MainCreateEvent extends MainEvent {
  MainCreateEvent(
      {required this.userEmail,
      required this.userRole,
      required this.userPassword});
  final String userEmail;
  final String userRole;
  final String userPassword;
}
