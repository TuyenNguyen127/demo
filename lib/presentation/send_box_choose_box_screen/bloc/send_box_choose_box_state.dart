// ignore_for_file: must_be_immutable

part of 'send_box_choose_box_bloc.dart';

/// Represents the state of SendBoxChooseBox in the application.
class SendBoxChooseBoxState extends Equatable {
  SendBoxChooseBoxState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.sendBoxChooseBoxModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SendBoxChooseBoxModel? sendBoxChooseBoxModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        sendBoxChooseBoxModelObj,
      ];

  SendBoxChooseBoxState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SendBoxChooseBoxModel? sendBoxChooseBoxModelObj,
  }) {
    return SendBoxChooseBoxState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      sendBoxChooseBoxModelObj:
          sendBoxChooseBoxModelObj ?? this.sendBoxChooseBoxModelObj,
    );
  }
}
