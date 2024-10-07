import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_new_user_state.dart';
part 'add_new_user_event.dart';

class AddNewUserBloc extends Bloc<AddNewUserEvent, AddNewUserState> {
  AddNewUserBloc() : super(AddNewUserInitialState()) {
    on<AddNewUserCreateEvent>(_createUser);
  }

  FutureOr<void> _createUser(
      AddNewUserCreateEvent event, Emitter<AddNewUserState> emit) {
    emit(AddNewUserLoadingState());

    // send post to backend if error emit error state else success state

    emit(AddNewUserSuccessState());
  }
}
