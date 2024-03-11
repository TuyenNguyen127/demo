import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app_demo/presentation/oder_new_box_oderbox_screen/models/oder_new_box_oderbox_model.dart';
part 'oder_new_box_oderbox_event.dart';
part 'oder_new_box_oderbox_state.dart';

/// A bloc that manages the state of a OderNewBoxOderbox according to the event that is dispatched to it.
class OderNewBoxOderboxBloc
    extends Bloc<OderNewBoxOderboxEvent, OderNewBoxOderboxState> {
  OderNewBoxOderboxBloc(OderNewBoxOderboxState initialState)
      : super(initialState) {
    on<OderNewBoxOderboxInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
    on<ChangeDropDown2Event>(_changeDropDown2);
  }

  _onInitialize(
    OderNewBoxOderboxInitialEvent event,
    Emitter<OderNewBoxOderboxState> emit,
  ) async {
    emit(state.copyWith(
        oderNewBoxOderboxModelObj: state.oderNewBoxOderboxModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1(),
            dropdownItemList2: fillDropdownItemList2())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<OderNewBoxOderboxState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<OderNewBoxOderboxState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  _changeDropDown2(
    ChangeDropDown2Event event,
    Emitter<OderNewBoxOderboxState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue2: event.value));
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

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
