// ignore_for_file: must_be_immutable

part of 'send_box_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendBoxAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendBoxAddressEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SendBoxAddress widget is first created.
class SendBoxAddressInitialEvent extends SendBoxAddressEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends SendBoxAddressEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
