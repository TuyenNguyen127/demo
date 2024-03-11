import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/type_request_screen/models/type_request_model.dart';
part 'type_request_event.dart';
part 'type_request_state.dart';

/// A bloc that manages the state of a TypeRequest according to the event that is dispatched to it.
class TypeRequestBloc extends Bloc<TypeRequestEvent, TypeRequestState> {
  TypeRequestBloc(TypeRequestState initialState) : super(initialState) {
    on<TypeRequestInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TypeRequestInitialEvent event,
    Emitter<TypeRequestState> emit,
  ) async {
    emit(state.copyWith(
        orderNewBoxController: TextEditingController(),
        sendBoxToWarehouseValueController: TextEditingController(),
        getBackBoxValueController: TextEditingController(),
        helpValueController: TextEditingController()));
  }
}
