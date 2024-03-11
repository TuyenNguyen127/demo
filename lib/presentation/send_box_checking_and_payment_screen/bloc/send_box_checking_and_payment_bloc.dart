import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/send_box_checking_and_payment_screen/models/send_box_checking_and_payment_model.dart';
part 'send_box_checking_and_payment_event.dart';
part 'send_box_checking_and_payment_state.dart';

/// A bloc that manages the state of a SendBoxCheckingAndPayment according to the event that is dispatched to it.
class SendBoxCheckingAndPaymentBloc extends Bloc<SendBoxCheckingAndPaymentEvent,
    SendBoxCheckingAndPaymentState> {
  SendBoxCheckingAndPaymentBloc(SendBoxCheckingAndPaymentState initialState)
      : super(initialState) {
    on<SendBoxCheckingAndPaymentInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SendBoxCheckingAndPaymentState> emit,
  ) {
    emit(state.copyWith(agreeTheTermsOfUse: event.value));
  }

  _onInitialize(
    SendBoxCheckingAndPaymentInitialEvent event,
    Emitter<SendBoxCheckingAndPaymentState> emit,
  ) async {
    emit(state.copyWith(agreeTheTermsOfUse: false));
  }
}
