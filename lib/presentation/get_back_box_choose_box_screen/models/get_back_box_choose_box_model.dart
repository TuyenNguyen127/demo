// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:app_demo/core/app_export.dart';

/// This class defines the variables used in the [get_back_box_choose_box_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GetBackBoxChooseBoxModel extends Equatable {
  GetBackBoxChooseBoxModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  GetBackBoxChooseBoxModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return GetBackBoxChooseBoxModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
