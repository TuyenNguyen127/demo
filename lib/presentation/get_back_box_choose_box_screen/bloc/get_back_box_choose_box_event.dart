// ignore_for_file: must_be_immutable

part of 'get_back_box_choose_box_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GetBackBoxChooseBox widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GetBackBoxChooseBoxEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GetBackBoxChooseBox widget is first created.
class GetBackBoxChooseBoxInitialEvent extends GetBackBoxChooseBoxEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends GetBackBoxChooseBoxEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends GetBackBoxChooseBoxEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
