// ignore_for_file: must_be_immutable

part of 'get_back_box_checking_and_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GetBackBoxCheckingAndPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GetBackBoxCheckingAndPaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GetBackBoxCheckingAndPayment widget is first created.
class GetBackBoxCheckingAndPaymentInitialEvent
    extends GetBackBoxCheckingAndPaymentEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends GetBackBoxCheckingAndPaymentEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
