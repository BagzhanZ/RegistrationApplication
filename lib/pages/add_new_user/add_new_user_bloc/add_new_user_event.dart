part of 'add_new_user_bloc.dart';

abstract class AddNewUserEvent {}

class AddNewUserCreateEvent extends AddNewUserEvent {
  AddNewUserCreateEvent(
      {required this.userEmail,
      required this.userRole,
      required this.userPassword});
  final String userEmail;
  final String userRole;
  final String userPassword;
}
