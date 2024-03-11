// ignore_for_file: must_be_immutable

part of 'oder_new_box_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OderNewBoxAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OderNewBoxAddressEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OderNewBoxAddress widget is first created.
class OderNewBoxAddressInitialEvent extends OderNewBoxAddressEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends OderNewBoxAddressEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
