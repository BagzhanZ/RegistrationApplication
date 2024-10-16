part of 'my_home_bloc.dart';

abstract class MyHomeState {}

class MyHomeInitialState extends MyHomeState {}

class MyHomeLoadingState extends MyHomeState {}

class MyHomeSuccessState extends MyHomeState {}

class MyHomeErrorState extends MyHomeState {}

class MyHomeLoadedState extends MyHomeState {
  MyHomeLoadedState(
      {required this.emailController, required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
}
