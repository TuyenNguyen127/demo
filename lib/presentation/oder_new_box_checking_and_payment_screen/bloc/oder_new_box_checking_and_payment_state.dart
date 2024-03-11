// ignore_for_file: must_be_immutable

part of 'oder_new_box_checking_and_payment_bloc.dart';

/// Represents the state of OderNewBoxCheckingAndPayment in the application.
class OderNewBoxCheckingAndPaymentState extends Equatable {
  OderNewBoxCheckingAndPaymentState({
    this.agreeTheTermsOfUseCheckBox = false,
    this.oderNewBoxCheckingAndPaymentModelObj,
  });

  OderNewBoxCheckingAndPaymentModel? oderNewBoxCheckingAndPaymentModelObj;

  bool agreeTheTermsOfUseCheckBox;

  @override
  List<Object?> get props => [
        agreeTheTermsOfUseCheckBox,
        oderNewBoxCheckingAndPaymentModelObj,
      ];

  OderNewBoxCheckingAndPaymentState copyWith({
    bool? agreeTheTermsOfUseCheckBox,
    OderNewBoxCheckingAndPaymentModel? oderNewBoxCheckingAndPaymentModelObj,
  }) {
    return OderNewBoxCheckingAndPaymentState(
      agreeTheTermsOfUseCheckBox:
          agreeTheTermsOfUseCheckBox ?? this.agreeTheTermsOfUseCheckBox,
      oderNewBoxCheckingAndPaymentModelObj:
          oderNewBoxCheckingAndPaymentModelObj ??
              this.oderNewBoxCheckingAndPaymentModelObj,
    );
  }
}
