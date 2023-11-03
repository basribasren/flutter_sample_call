import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application6/presentation/dr_page_screen/models/dr_page_model.dart';
part 'dr_page_event.dart';
part 'dr_page_state.dart';

/// A bloc that manages the state of a DrPage according to the event that is dispatched to it.
class DrPageBloc extends Bloc<DrPageEvent, DrPageState> {
  DrPageBloc(DrPageState initialState) : super(initialState) {
    on<DrPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DrPageInitialEvent event,
    Emitter<DrPageState> emit,
  ) async {}
}
