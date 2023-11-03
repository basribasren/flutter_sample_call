import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application6/presentation/creator_screen/models/creator_model.dart';
part 'creator_event.dart';
part 'creator_state.dart';

/// A bloc that manages the state of a Creator according to the event that is dispatched to it.
class CreatorBloc extends Bloc<CreatorEvent, CreatorState> {
  CreatorBloc(CreatorState initialState) : super(initialState) {
    on<CreatorInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<CreatorState> emit,
  ) {
    emit(state.copyWith(
      twitterUrl: event.value,
    ));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CreatorState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    CreatorInitialEvent event,
    Emitter<CreatorState> emit,
  ) async {
    emit(state.copyWith(
      twitterUrl: false,
      radioGroup: "",
    ));
  }
}
