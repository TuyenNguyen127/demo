import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/oder_new_box_checking_and_payment_screen/models/oder_new_box_checking_and_payment_model.dart';
part 'oder_new_box_checking_and_payment_event.dart';
part 'oder_new_box_checking_and_payment_state.dart';

/// A bloc that manages the state of a OderNewBoxCheckingAndPayment according to the event that is dispatched to it.
class OderNewBoxCheckingAndPaymentBloc extends Bloc<
    OderNewBoxCheckingAndPaymentEvent, OderNewBoxCheckingAndPaymentState> {
  OderNewBoxCheckingAndPaymentBloc(
      OderNewBoxCheckingAndPaymentState initialState)
      : super(initialState) {
    on<OderNewBoxCheckingAndPaymentInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<OderNewBoxCheckingAndPaymentState> emit,
  ) {
    emit(state.copyWith(agreeTheTermsOfUseCheckBox: event.value));
  }

  _onInitialize(
    OderNewBoxCheckingAndPaymentInitialEvent event,
    Emitter<OderNewBoxCheckingAndPaymentState> emit,
  ) async {
    emit(state.copyWith(agreeTheTermsOfUseCheckBox: false));
  }
}
