// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:app_demo/core/app_export.dart';

/// This class defines the variables used in the [send_box_choose_box_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SendBoxChooseBoxModel extends Equatable {
  SendBoxChooseBoxModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  SendBoxChooseBoxModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return SendBoxChooseBoxModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
