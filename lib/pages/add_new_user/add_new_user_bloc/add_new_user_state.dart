part of 'add_new_user_bloc.dart';

abstract class AddNewUserState {}

class AddNewUserInitialState extends AddNewUserState {}

class AddNewUserLoadingState extends AddNewUserState {}

class AddNewUserSuccessState extends AddNewUserState {}

class AddNewUserErrorState extends AddNewUserState {}
