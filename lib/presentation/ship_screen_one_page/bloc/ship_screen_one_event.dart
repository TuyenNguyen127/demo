// ignore_for_file: must_be_immutable

part of 'ship_screen_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShipScreenOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShipScreenOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ShipScreenOne widget is first created.
class ShipScreenOneInitialEvent extends ShipScreenOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ShipScreenOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
