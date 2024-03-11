import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/ship_screen_two_tab_container_page/models/ship_screen_two_tab_container_model.dart';
part 'ship_screen_two_tab_container_event.dart';
part 'ship_screen_two_tab_container_state.dart';

/// A bloc that manages the state of a ShipScreenTwoTabContainer according to the event that is dispatched to it.
class ShipScreenTwoTabContainerBloc extends Bloc<ShipScreenTwoTabContainerEvent,
    ShipScreenTwoTabContainerState> {
  ShipScreenTwoTabContainerBloc(ShipScreenTwoTabContainerState initialState)
      : super(initialState) {
    on<ShipScreenTwoTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShipScreenTwoTabContainerInitialEvent event,
    Emitter<ShipScreenTwoTabContainerState> emit,
  ) async {}
}
