import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/get_back_box_checking_and_payment_screen/models/get_back_box_checking_and_payment_model.dart';
part 'get_back_box_checking_and_payment_event.dart';
part 'get_back_box_checking_and_payment_state.dart';

/// A bloc that manages the state of a GetBackBoxCheckingAndPayment according to the event that is dispatched to it.
class GetBackBoxCheckingAndPaymentBloc extends Bloc<
    GetBackBoxCheckingAndPaymentEvent, GetBackBoxCheckingAndPaymentState> {
  GetBackBoxCheckingAndPaymentBloc(
      GetBackBoxCheckingAndPaymentState initialState)
      : super(initialState) {
    on<GetBackBoxCheckingAndPaymentInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<GetBackBoxCheckingAndPaymentState> emit,
  ) {
    emit(state.copyWith(agreeTheTermsOfUse: event.value));
  }

  _onInitialize(
    GetBackBoxCheckingAndPaymentInitialEvent event,
    Emitter<GetBackBoxCheckingAndPaymentState> emit,
  ) async {
    emit(state.copyWith(agreeTheTermsOfUse: false));
  }
}
