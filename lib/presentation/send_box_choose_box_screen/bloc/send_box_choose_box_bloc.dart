import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/send_box_choose_box_screen/models/send_box_choose_box_model.dart';
part 'send_box_choose_box_event.dart';
part 'send_box_choose_box_state.dart';

/// A bloc that manages the state of a SendBoxChooseBox according to the event that is dispatched to it.
class SendBoxChooseBoxBloc
    extends Bloc<SendBoxChooseBoxEvent, SendBoxChooseBoxState> {
  SendBoxChooseBoxBloc(SendBoxChooseBoxState initialState)
      : super(initialState) {
    on<SendBoxChooseBoxInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    SendBoxChooseBoxInitialEvent event,
    Emitter<SendBoxChooseBoxState> emit,
  ) async {
    emit(state.copyWith(
        sendBoxChooseBoxModelObj: state.sendBoxChooseBoxModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<SendBoxChooseBoxState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<SendBoxChooseBoxState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
