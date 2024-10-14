import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_home_state.dart';
part 'my_home_event.dart';

class MyHomeBloc extends Bloc<MyHomeEvent, MyHomeState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  MyHomeBloc() : super(MyHomeInitialState()) {
    on<MyHomeInitialEvent>(_initialEvent);
    on<MyHomeCreateEvent>(_createUser);
  }

  FutureOr<void> _initialEvent(
      MyHomeInitialEvent event, Emitter<MyHomeState> emit) {
    emit(MyHomeLoadingState());
    emit(MyHomeLoadedState(
        emailController: emailController,
        passwordController: passwordController));
  }

  FutureOr<void> _createUser(
      MyHomeCreateEvent event, Emitter<MyHomeState> emit) {
    print(emailController.text);
    print(passwordController.text);
    emit(MyHomeSuccessState());
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
