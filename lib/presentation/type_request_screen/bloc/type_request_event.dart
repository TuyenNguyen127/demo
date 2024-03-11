// ignore_for_file: must_be_immutable

part of 'type_request_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TypeRequest widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TypeRequestEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TypeRequest widget is first created.
class TypeRequestInitialEvent extends TypeRequestEvent {
  @override
  List<Object?> get props => [];
}
