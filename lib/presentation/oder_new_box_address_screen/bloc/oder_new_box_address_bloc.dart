import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/oder_new_box_address_screen/models/oder_new_box_address_model.dart';
part 'oder_new_box_address_event.dart';
part 'oder_new_box_address_state.dart';

/// A bloc that manages the state of a OderNewBoxAddress according to the event that is dispatched to it.
class OderNewBoxAddressBloc
    extends Bloc<OderNewBoxAddressEvent, OderNewBoxAddressState> {
  OderNewBoxAddressBloc(OderNewBoxAddressState initialState)
      : super(initialState) {
    on<OderNewBoxAddressInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    OderNewBoxAddressInitialEvent event,
    Emitter<OderNewBoxAddressState> emit,
  ) async {
    emit(state.copyWith(
        phoneNumberController: TextEditingController(),
        fullNameController: TextEditingController(),
        addressController: TextEditingController(),
        cityController: TextEditingController(),
        addressController1: TextEditingController(),
        addressController2: TextEditingController(),
        streetValueController: TextEditingController()));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<OderNewBoxAddressState> emit,
  ) {
    emit(state.copyWith(
        oderNewBoxAddressModelObj: state.oderNewBoxAddressModelObj?.copyWith(
      date: event.date,
    )));
  }
}
