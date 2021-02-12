import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'internal_states_event.dart';
part 'internal_states_state.dart';

class InternalStatesBloc extends Bloc<InternalStatesEvent, InternalStatesState> {
  InternalStatesBloc() : super(InternalStatesInitial());

  @override
  Stream<InternalStatesState> mapEventToState(
    InternalStatesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
