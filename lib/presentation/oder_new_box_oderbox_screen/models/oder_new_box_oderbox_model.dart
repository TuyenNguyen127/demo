// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:app_demo/core/app_export.dart';

/// This class defines the variables used in the [oder_new_box_oderbox_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OderNewBoxOderboxModel extends Equatable {
  OderNewBoxOderboxModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.dropdownItemList2 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  OderNewBoxOderboxModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
  }) {
    return OderNewBoxOderboxModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, dropdownItemList1, dropdownItemList2];
}
