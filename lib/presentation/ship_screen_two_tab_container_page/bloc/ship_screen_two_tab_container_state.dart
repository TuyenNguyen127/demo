// ignore_for_file: must_be_immutable

part of 'ship_screen_two_tab_container_bloc.dart';

/// Represents the state of ShipScreenTwoTabContainer in the application.
class ShipScreenTwoTabContainerState extends Equatable {
  ShipScreenTwoTabContainerState({this.shipScreenTwoTabContainerModelObj});

  ShipScreenTwoTabContainerModel? shipScreenTwoTabContainerModelObj;

  @override
  List<Object?> get props => [
        shipScreenTwoTabContainerModelObj,
      ];

  ShipScreenTwoTabContainerState copyWith(
      {ShipScreenTwoTabContainerModel? shipScreenTwoTabContainerModelObj}) {
    return ShipScreenTwoTabContainerState(
      shipScreenTwoTabContainerModelObj: shipScreenTwoTabContainerModelObj ??
          this.shipScreenTwoTabContainerModelObj,
    );
  }
}
