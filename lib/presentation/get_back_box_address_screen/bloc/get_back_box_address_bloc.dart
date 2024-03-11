import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/get_back_box_address_screen/models/get_back_box_address_model.dart';
part 'get_back_box_address_event.dart';
part 'get_back_box_address_state.dart';

/// A bloc that manages the state of a GetBackBoxAddress according to the event that is dispatched to it.
class GetBackBoxAddressBloc
    extends Bloc<GetBackBoxAddressEvent, GetBackBoxAddressState> {
  GetBackBoxAddressBloc(GetBackBoxAddressState initialState)
      : super(initialState) {
    on<GetBackBoxAddressInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
    GetBackBoxAddressInitialEvent event,
    Emitter<GetBackBoxAddressState> emit,
  ) async {
    emit(state.copyWith(
        phoneNumberEditTextController: TextEditingController(),
        fullNameEditTextController: TextEditingController(),
        addressEditTextController: TextEditingController(),
        cityEditTextController: TextEditingController(),
        addressEditTextController1: TextEditingController(),
        addressEditTextController2: TextEditingController(),
        typeEditTextController: TextEditingController()));
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<GetBackBoxAddressState> emit,
  ) {
    emit(state.copyWith(
        getBackBoxAddressModelObj: state.getBackBoxAddressModelObj?.copyWith(
      date: event.date,
    )));
  }
}
