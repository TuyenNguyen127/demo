// ignore_for_file: must_be_immutable

part of 'send_box_choose_box_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendBoxChooseBox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendBoxChooseBoxEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SendBoxChooseBox widget is first created.
class SendBoxChooseBoxInitialEvent extends SendBoxChooseBoxEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends SendBoxChooseBoxEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends SendBoxChooseBoxEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
