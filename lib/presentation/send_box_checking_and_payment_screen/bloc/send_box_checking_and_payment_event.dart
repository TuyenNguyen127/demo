// ignore_for_file: must_be_immutable

part of 'send_box_checking_and_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendBoxCheckingAndPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendBoxCheckingAndPaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SendBoxCheckingAndPayment widget is first created.
class SendBoxCheckingAndPaymentInitialEvent
    extends SendBoxCheckingAndPaymentEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SendBoxCheckingAndPaymentEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
