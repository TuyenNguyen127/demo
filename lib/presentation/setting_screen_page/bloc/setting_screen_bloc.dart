import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/setting_screen_page/models/setting_screen_model.dart';
part 'setting_screen_event.dart';
part 'setting_screen_state.dart';

/// A bloc that manages the state of a SettingScreen according to the event that is dispatched to it.
class SettingScreenBloc extends Bloc<SettingScreenEvent, SettingScreenState> {
  SettingScreenBloc(SettingScreenState initialState) : super(initialState) {
    on<SettingScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingScreenInitialEvent event,
    Emitter<SettingScreenState> emit,
  ) async {}
}
