part of 'my_home_bloc.dart';

abstract class MyHomeEvent {}

class MyHomeInitialEvent extends MyHomeEvent {}

class MyHomeCreateEvent extends MyHomeEvent {
  // MyHomeCreateEvent(
  //     {required this.userEmail,
  //     required this.userRole,
  //     required this.userPassword});
  // final String userEmail;
  // final String userRole;
  // final String userPassword;
}
