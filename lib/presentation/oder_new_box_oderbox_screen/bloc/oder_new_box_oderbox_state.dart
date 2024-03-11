// ignore_for_file: must_be_immutable

part of 'oder_new_box_oderbox_bloc.dart';

/// Represents the state of OderNewBoxOderbox in the application.
class OderNewBoxOderboxState extends Equatable {
  OderNewBoxOderboxState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.oderNewBoxOderboxModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  OderNewBoxOderboxModel? oderNewBoxOderboxModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        oderNewBoxOderboxModelObj,
      ];

  OderNewBoxOderboxState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    OderNewBoxOderboxModel? oderNewBoxOderboxModelObj,
  }) {
    return OderNewBoxOderboxState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      oderNewBoxOderboxModelObj:
          oderNewBoxOderboxModelObj ?? this.oderNewBoxOderboxModelObj,
    );
  }
}
