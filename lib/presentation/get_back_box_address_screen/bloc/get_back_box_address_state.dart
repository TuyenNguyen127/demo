// ignore_for_file: must_be_immutable

part of 'get_back_box_address_bloc.dart';

/// Represents the state of GetBackBoxAddress in the application.
class GetBackBoxAddressState extends Equatable {
  GetBackBoxAddressState({
    this.phoneNumberEditTextController,
    this.fullNameEditTextController,
    this.addressEditTextController,
    this.cityEditTextController,
    this.addressEditTextController1,
    this.addressEditTextController2,
    this.typeEditTextController,
    this.getBackBoxAddressModelObj,
  });

  TextEditingController? phoneNumberEditTextController;

  TextEditingController? fullNameEditTextController;

  TextEditingController? addressEditTextController;

  TextEditingController? cityEditTextController;

  TextEditingController? addressEditTextController1;

  TextEditingController? addressEditTextController2;

  TextEditingController? typeEditTextController;

  GetBackBoxAddressModel? getBackBoxAddressModelObj;

  @override
  List<Object?> get props => [
        phoneNumberEditTextController,
        fullNameEditTextController,
        addressEditTextController,
        cityEditTextController,
        addressEditTextController1,
        addressEditTextController2,
        typeEditTextController,
        getBackBoxAddressModelObj,
      ];

  GetBackBoxAddressState copyWith({
    TextEditingController? phoneNumberEditTextController,
    TextEditingController? fullNameEditTextController,
    TextEditingController? addressEditTextController,
    TextEditingController? cityEditTextController,
    TextEditingController? addressEditTextController1,
    TextEditingController? addressEditTextController2,
    TextEditingController? typeEditTextController,
    GetBackBoxAddressModel? getBackBoxAddressModelObj,
  }) {
    return GetBackBoxAddressState(
      phoneNumberEditTextController:
          phoneNumberEditTextController ?? this.phoneNumberEditTextController,
      fullNameEditTextController:
          fullNameEditTextController ?? this.fullNameEditTextController,
      addressEditTextController:
          addressEditTextController ?? this.addressEditTextController,
      cityEditTextController:
          cityEditTextController ?? this.cityEditTextController,
      addressEditTextController1:
          addressEditTextController1 ?? this.addressEditTextController1,
      addressEditTextController2:
          addressEditTextController2 ?? this.addressEditTextController2,
      typeEditTextController:
          typeEditTextController ?? this.typeEditTextController,
      getBackBoxAddressModelObj:
          getBackBoxAddressModelObj ?? this.getBackBoxAddressModelObj,
    );
  }
}
