import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_state.dart';
part 'main_event.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitialState()) {
    on<MainCreateEvent>(_createUser);
  }

  FutureOr<void> _createUser(MainCreateEvent event, Emitter<MainState> emit) {
    emit(MainLoadingState());

    // send post to backend if error emit error state else success state

    emit(MainSuccessState());
  }
}
