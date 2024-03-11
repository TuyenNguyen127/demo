// ignore_for_file: must_be_immutable

part of 'oder_new_box_oderbox_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OderNewBoxOderbox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OderNewBoxOderboxEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OderNewBoxOderbox widget is first created.
class OderNewBoxOderboxInitialEvent extends OderNewBoxOderboxEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends OderNewBoxOderboxEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends OderNewBoxOderboxEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends OderNewBoxOderboxEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
