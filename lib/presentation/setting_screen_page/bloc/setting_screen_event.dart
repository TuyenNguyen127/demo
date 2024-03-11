// ignore_for_file: must_be_immutable

part of 'setting_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingScreenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SettingScreen widget is first created.
class SettingScreenInitialEvent extends SettingScreenEvent {
  @override
  List<Object?> get props => [];
}
