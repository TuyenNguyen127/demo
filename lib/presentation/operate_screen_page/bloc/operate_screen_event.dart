// ignore_for_file: must_be_immutable

part of 'operate_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OperateScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OperateScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OperateScreen widget is first created.
class OperateScreenInitialEvent extends OperateScreenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends OperateScreenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
