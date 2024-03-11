// ignore_for_file: must_be_immutable

part of 'ship_screen_two_bloc.dart';

/// Represents the state of ShipScreenTwo in the application.
class ShipScreenTwoState extends Equatable {
  ShipScreenTwoState({
    this.selectedDropDownValue,
    this.shipScreenTwoModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  ShipScreenTwoModel? shipScreenTwoModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        shipScreenTwoModelObj,
      ];

  ShipScreenTwoState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    ShipScreenTwoModel? shipScreenTwoModelObj,
  }) {
    return ShipScreenTwoState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      shipScreenTwoModelObj:
          shipScreenTwoModelObj ?? this.shipScreenTwoModelObj,
    );
  }
}
