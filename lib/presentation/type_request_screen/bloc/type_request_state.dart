// ignore_for_file: must_be_immutable

part of 'type_request_bloc.dart';

/// Represents the state of TypeRequest in the application.
class TypeRequestState extends Equatable {
  TypeRequestState({
    this.orderNewBoxController,
    this.sendBoxToWarehouseValueController,
    this.getBackBoxValueController,
    this.helpValueController,
    this.typeRequestModelObj,
  });

  TextEditingController? orderNewBoxController;

  TextEditingController? sendBoxToWarehouseValueController;

  TextEditingController? getBackBoxValueController;

  TextEditingController? helpValueController;

  TypeRequestModel? typeRequestModelObj;

  @override
  List<Object?> get props => [
        orderNewBoxController,
        sendBoxToWarehouseValueController,
        getBackBoxValueController,
        helpValueController,
        typeRequestModelObj,
      ];

  TypeRequestState copyWith({
    TextEditingController? orderNewBoxController,
    TextEditingController? sendBoxToWarehouseValueController,
    TextEditingController? getBackBoxValueController,
    TextEditingController? helpValueController,
    TypeRequestModel? typeRequestModelObj,
  }) {
    return TypeRequestState(
      orderNewBoxController:
          orderNewBoxController ?? this.orderNewBoxController,
      sendBoxToWarehouseValueController: sendBoxToWarehouseValueController ??
          this.sendBoxToWarehouseValueController,
      getBackBoxValueController:
          getBackBoxValueController ?? this.getBackBoxValueController,
      helpValueController: helpValueController ?? this.helpValueController,
      typeRequestModelObj: typeRequestModelObj ?? this.typeRequestModelObj,
    );
  }
}
