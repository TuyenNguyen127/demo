import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/send_box_address_screen/models/send_box_address_model.dart';
part 'send_box_address_event.dart';
part 'send_box_address_state.dart';

/// A bloc that manages the state of a SendBoxAddress according to the event that is dispatched to it.
class SendBoxAddressBloc
    extends Bloc<SendBoxAddressEvent, SendBoxAddressState> {
  SendBoxAddressBloc(SendBoxAddressState initialState) : super(initialState) {
    on<SendBoxAddressInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    SendBoxAddressInitialEvent event,
    Emitter<SendBoxAddressState> emit,
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
    Emitter<SendBoxAddressState> emit,
  ) {
    emit(state.copyWith(
        sendBoxAddressModelObj: state.sendBoxAddressModelObj?.copyWith(
      date: event.date,
    )));
  }
}
