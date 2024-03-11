// ignore_for_file: must_be_immutable

part of 'ship_screen_one_bloc.dart';

/// Represents the state of ShipScreenOne in the application.
class ShipScreenOneState extends Equatable {
  ShipScreenOneState({
    this.selectedDropDownValue,
    this.shipScreenOneModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  ShipScreenOneModel? shipScreenOneModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        shipScreenOneModelObj,
      ];

  ShipScreenOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    ShipScreenOneModel? shipScreenOneModelObj,
  }) {
    return ShipScreenOneState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      shipScreenOneModelObj:
          shipScreenOneModelObj ?? this.shipScreenOneModelObj,
    );
  }
}
