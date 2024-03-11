import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderlist_item_model.dart';
import 'package:app_demo/presentation/ship_screen_one_page/models/ship_screen_one_model.dart';
part 'ship_screen_one_event.dart';
part 'ship_screen_one_state.dart';

/// A bloc that manages the state of a ShipScreenOne according to the event that is dispatched to it.
class ShipScreenOneBloc extends Bloc<ShipScreenOneEvent, ShipScreenOneState> {
  ShipScreenOneBloc(ShipScreenOneState initialState) : super(initialState) {
    on<ShipScreenOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    ShipScreenOneInitialEvent event,
    Emitter<ShipScreenOneState> emit,
  ) async {
    emit(state.copyWith(
        shipScreenOneModelObj: state.shipScreenOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      orderlistItemList: fillOrderlistItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ShipScreenOneState> emit,
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

  List<OrderlistItemModel> fillOrderlistItemList() {
    return [
      OrderlistItemModel(
          id: "ID",
          widget: "33589549623491-001",
          status: "Pending",
          locationText: "144 Xuan Thuy, Cau Giay, Ha Noi",
          itemsText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          serviceText: "Hang On, Washing",
          weightText: "Box",
          noteText: "Nothing",
          callShipperText: "Call shipper",
          editOrderText: "Edit order",
          revokeText: "Revoke",
          moreOptionsText: "..."),
      OrderlistItemModel(
          id: "ID",
          widget: "33589549623491-002",
          status: "Pending",
          locationText: "144 Xuan Thuy, Cau Giay, Ha Noi",
          itemsText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          serviceText: "Hang On, Washing",
          weightText: "Box",
          noteText: "Nothing",
          callShipperText: "Call shipper",
          editOrderText: "Edit order",
          revokeText: "Revoke",
          moreOptionsText: "..."),
      OrderlistItemModel(
          id: "ID",
          widget: "33589549623491-003",
          status: "Pending",
          locationText: "144 Xuan Thuy, Cau Giay, Ha Noi",
          itemsText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          serviceText: "Hang On, Washing",
          weightText: "Bag",
          noteText: "Nothing",
          editOrderText: "Edit order",
          revokeText: "Revoke",
          moreOptionsText: "...")
    ];
  }
}
