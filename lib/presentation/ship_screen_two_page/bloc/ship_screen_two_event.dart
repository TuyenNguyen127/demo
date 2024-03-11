// ignore_for_file: must_be_immutable

part of 'ship_screen_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShipScreenTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShipScreenTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ShipScreenTwo widget is first created.
class ShipScreenTwoInitialEvent extends ShipScreenTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ShipScreenTwoEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
