// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:app_demo/core/app_export.dart';
import '../../../core/app_export.dart';
import 'orderlist_item_model.dart';

/// This class defines the variables used in the [ship_screen_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ShipScreenOneModel extends Equatable {
  ShipScreenOneModel({
    this.dropdownItemList = const [],
    this.orderlistItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<OrderlistItemModel> orderlistItemList;

  ShipScreenOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<OrderlistItemModel>? orderlistItemList,
  }) {
    return ShipScreenOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      orderlistItemList: orderlistItemList ?? this.orderlistItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, orderlistItemList];
}
