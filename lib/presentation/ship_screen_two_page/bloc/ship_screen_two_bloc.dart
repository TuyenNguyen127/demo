import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderlist1_item_model.dart';
import 'package:app_demo/presentation/ship_screen_two_page/models/ship_screen_two_model.dart';
part 'ship_screen_two_event.dart';
part 'ship_screen_two_state.dart';

/// A bloc that manages the state of a ShipScreenTwo according to the event that is dispatched to it.
class ShipScreenTwoBloc extends Bloc<ShipScreenTwoEvent, ShipScreenTwoState> {
  ShipScreenTwoBloc(ShipScreenTwoState initialState) : super(initialState) {
    on<ShipScreenTwoInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    ShipScreenTwoInitialEvent event,
    Emitter<ShipScreenTwoState> emit,
  ) async {
    emit(state.copyWith(
        shipScreenTwoModelObj: state.shipScreenTwoModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      orderlist1ItemList: fillOrderlist1ItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ShipScreenTwoState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<Orderlist1ItemModel> fillOrderlist1ItemList() {
    return [
      Orderlist1ItemModel(
          id: "ID",
          widget: "33589549623491-001",
          status: "Pending",
          locationText: "144 Xuan Thuy, Cau Giay, Ha Noi",
          itemsText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          nameText: "Nguyễn Văn Tuyển",
          phoneText: "0123456789",
          noteText: "Nothing",
          callshipper: "Call shipper",
          editorder: "Edit order",
          revoke: "Revoke",
          fiftyThree: "..."),
      Orderlist1ItemModel(
          id: "ID",
          widget: "33589549623491-002",
          status: "Pending",
          locationText: "144 Xuan Thuy, Cau Giay, Ha Noi",
          itemsText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          nameText: "Nguyễn Văn Tuyển",
          phoneText: "0123456789",
          noteText: "Nothing",
          callshipper: "Call shipper",
          editorder: "Edit order",
          revoke: "Revoke",
          fiftyThree: "..."),
      Orderlist1ItemModel(
          id: "ID",
          widget: "33589549623491-003",
          status: "Pending",
          locationText: "144 Xuan Thuy, Cau Giay, Ha Noi",
          itemsText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          nameText: "Nguyễn Văn Tuyển",
          phoneText: "0123456789",
          noteText: "Nothing",
          editorder: "Edit order",
          revoke: "Revoke",
          fiftyThree: "...")
    ];
  }
}
