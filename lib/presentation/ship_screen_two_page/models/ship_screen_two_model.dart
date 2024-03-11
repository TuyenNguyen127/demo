// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:app_demo/core/app_export.dart';
import '../../../core/app_export.dart';
import 'orderlist1_item_model.dart';

/// This class defines the variables used in the [ship_screen_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ShipScreenTwoModel extends Equatable {
  ShipScreenTwoModel({
    this.dropdownItemList = const [],
    this.orderlist1ItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<Orderlist1ItemModel> orderlist1ItemList;

  ShipScreenTwoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<Orderlist1ItemModel>? orderlist1ItemList,
  }) {
    return ShipScreenTwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      orderlist1ItemList: orderlist1ItemList ?? this.orderlist1ItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, orderlist1ItemList];
}
