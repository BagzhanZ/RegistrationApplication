import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'my_home_state.dart';
part 'my_home_event.dart';

class MyHomeBloc extends Bloc<MyHomeEvent, MyHomeState> {
  MyHomeBloc() : super(MyHomeInitialState()) {
    on<MyHomeCreateEvent>(_createUser);
  }

  FutureOr<void> _createUser(
      MyHomeCreateEvent event, Emitter<MyHomeState> emit) {
    emit(MyHomeLoadingState());

    // send post to backend if error emit error state else success state

    emit(MyHomeSuccessState());
  }
}
