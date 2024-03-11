// ignore_for_file: must_be_immutable

part of 'send_box_checking_and_payment_bloc.dart';

/// Represents the state of SendBoxCheckingAndPayment in the application.
class SendBoxCheckingAndPaymentState extends Equatable {
  SendBoxCheckingAndPaymentState({
    this.agreeTheTermsOfUse = false,
    this.sendBoxCheckingAndPaymentModelObj,
  });

  SendBoxCheckingAndPaymentModel? sendBoxCheckingAndPaymentModelObj;

  bool agreeTheTermsOfUse;

  @override
  List<Object?> get props => [
        agreeTheTermsOfUse,
        sendBoxCheckingAndPaymentModelObj,
      ];

  SendBoxCheckingAndPaymentState copyWith({
    bool? agreeTheTermsOfUse,
    SendBoxCheckingAndPaymentModel? sendBoxCheckingAndPaymentModelObj,
  }) {
    return SendBoxCheckingAndPaymentState(
      agreeTheTermsOfUse: agreeTheTermsOfUse ?? this.agreeTheTermsOfUse,
      sendBoxCheckingAndPaymentModelObj: sendBoxCheckingAndPaymentModelObj ??
          this.sendBoxCheckingAndPaymentModelObj,
    );
  }
}
