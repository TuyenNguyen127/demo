// ignore_for_file: must_be_immutable

part of 'oder_new_box_checking_and_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OderNewBoxCheckingAndPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OderNewBoxCheckingAndPaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OderNewBoxCheckingAndPayment widget is first created.
class OderNewBoxCheckingAndPaymentInitialEvent
    extends OderNewBoxCheckingAndPaymentEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends OderNewBoxCheckingAndPaymentEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
