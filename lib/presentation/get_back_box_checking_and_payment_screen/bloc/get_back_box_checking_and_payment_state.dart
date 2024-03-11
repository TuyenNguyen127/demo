// ignore_for_file: must_be_immutable

part of 'get_back_box_checking_and_payment_bloc.dart';

/// Represents the state of GetBackBoxCheckingAndPayment in the application.
class GetBackBoxCheckingAndPaymentState extends Equatable {
  GetBackBoxCheckingAndPaymentState({
    this.agreeTheTermsOfUse = false,
    this.getBackBoxCheckingAndPaymentModelObj,
  });

  GetBackBoxCheckingAndPaymentModel? getBackBoxCheckingAndPaymentModelObj;

  bool agreeTheTermsOfUse;

  @override
  List<Object?> get props => [
        agreeTheTermsOfUse,
        getBackBoxCheckingAndPaymentModelObj,
      ];

  GetBackBoxCheckingAndPaymentState copyWith({
    bool? agreeTheTermsOfUse,
    GetBackBoxCheckingAndPaymentModel? getBackBoxCheckingAndPaymentModelObj,
  }) {
    return GetBackBoxCheckingAndPaymentState(
      agreeTheTermsOfUse: agreeTheTermsOfUse ?? this.agreeTheTermsOfUse,
      getBackBoxCheckingAndPaymentModelObj:
          getBackBoxCheckingAndPaymentModelObj ??
              this.getBackBoxCheckingAndPaymentModelObj,
    );
  }
}
