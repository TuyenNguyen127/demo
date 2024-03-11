// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:app_demo/core/app_export.dart';
import '../../../core/app_export.dart';
import 'button1_item_model.dart';
import 'ordercomponent_item_model.dart';

/// This class defines the variables used in the [operate_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OperateScreenModel extends Equatable {
  OperateScreenModel({
    this.dropdownItemList = const [],
    this.button1ItemList = const [],
    this.ordercomponentItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<Button1ItemModel> button1ItemList;

  List<OrdercomponentItemModel> ordercomponentItemList;

  OperateScreenModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<Button1ItemModel>? button1ItemList,
    List<OrdercomponentItemModel>? ordercomponentItemList,
  }) {
    return OperateScreenModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      button1ItemList: button1ItemList ?? this.button1ItemList,
      ordercomponentItemList:
          ordercomponentItemList ?? this.ordercomponentItemList,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, button1ItemList, ordercomponentItemList];
}
