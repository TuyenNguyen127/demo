// ignore_for_file: must_be_immutable

part of 'get_back_box_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GetBackBoxAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GetBackBoxAddressEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GetBackBoxAddress widget is first created.
class GetBackBoxAddressInitialEvent extends GetBackBoxAddressEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date
class ChangeDateEvent extends GetBackBoxAddressEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
