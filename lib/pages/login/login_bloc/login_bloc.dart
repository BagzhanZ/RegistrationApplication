import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginCreateEvent>(_createUser);
  }

  FutureOr<void> _createUser(LoginCreateEvent event, Emitter<LoginState> emit) {
    emit(LoginLoadingState());

    // send post to backend if error emit error state else success state

    emit(LoginSuccessState());
  }
}
