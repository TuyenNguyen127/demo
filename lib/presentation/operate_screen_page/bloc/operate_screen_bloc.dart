import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/button1_item_model.dart';
import '../models/ordercomponent_item_model.dart';
import 'package:app_demo/presentation/operate_screen_page/models/operate_screen_model.dart';
part 'operate_screen_event.dart';
part 'operate_screen_state.dart';

/// A bloc that manages the state of a OperateScreen according to the event that is dispatched to it.
class OperateScreenBloc extends Bloc<OperateScreenEvent, OperateScreenState> {
  OperateScreenBloc(OperateScreenState initialState) : super(initialState) {
    on<OperateScreenInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    OperateScreenInitialEvent event,
    Emitter<OperateScreenState> emit,
  ) async {
    emit(state.copyWith(
        operateScreenModelObj: state.operateScreenModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      button1ItemList: fillButton1ItemList(),
      ordercomponentItemList: fillOrdercomponentItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<OperateScreenState> emit,
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

  List<Button1ItemModel> fillButton1ItemList() {
    return [
      Button1ItemModel(text: "Create request"),
      Button1ItemModel(text: "Create request"),
      Button1ItemModel(text: "Create request"),
      Button1ItemModel(text: "Create request")
    ];
  }

  List<OrdercomponentItemModel> fillOrdercomponentItemList() {
    return [
      OrdercomponentItemModel(
          id: "ID",
          widget: "33589549623491-001",
          statusText: "Saving",
          itemText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          serviceText: "Hang On, Washing",
          weightText: "Box | 50x50x100 | 20kg",
          priceText: "10000đ / day ",
          startDateText: "Start at: 20/12/2023"),
      OrdercomponentItemModel(
          id: "ID",
          widget: "33589549623491-002",
          statusText: "Saving",
          itemText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          serviceText: "Hang On, Washing",
          weightText: "Box | 50x50x100 | 20kg",
          priceText: "10000đ / day ",
          startDateText: "Start at: 20/12/2023"),
      OrdercomponentItemModel(
          id: "ID",
          widget: "33589549623491-003",
          statusText: "Saving",
          itemText: "10xQuan Jean; 10xAo so mi; 10xThat lung da",
          serviceText: "Hang On, Washing",
          weightText: "Bag | 50x150 | 20kg",
          priceText: "10000đ / day ",
          startDateText: "Start at: 20/12/2023")
    ];
  }
}
