// ignore_for_file: must_be_immutable

part of 'get_back_box_choose_box_bloc.dart';

/// Represents the state of GetBackBoxChooseBox in the application.
class GetBackBoxChooseBoxState extends Equatable {
  GetBackBoxChooseBoxState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.getBackBoxChooseBoxModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  GetBackBoxChooseBoxModel? getBackBoxChooseBoxModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        getBackBoxChooseBoxModelObj,
      ];

  GetBackBoxChooseBoxState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    GetBackBoxChooseBoxModel? getBackBoxChooseBoxModelObj,
  }) {
    return GetBackBoxChooseBoxState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      getBackBoxChooseBoxModelObj:
          getBackBoxChooseBoxModelObj ?? this.getBackBoxChooseBoxModelObj,
    );
  }
}
