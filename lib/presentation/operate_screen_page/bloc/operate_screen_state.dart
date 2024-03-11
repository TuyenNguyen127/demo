// ignore_for_file: must_be_immutable

part of 'operate_screen_bloc.dart';

/// Represents the state of OperateScreen in the application.
class OperateScreenState extends Equatable {
  OperateScreenState({
    this.selectedDropDownValue,
    this.operateScreenModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  OperateScreenModel? operateScreenModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        operateScreenModelObj,
      ];

  OperateScreenState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    OperateScreenModel? operateScreenModelObj,
  }) {
    return OperateScreenState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      operateScreenModelObj:
          operateScreenModelObj ?? this.operateScreenModelObj,
    );
  }
}
