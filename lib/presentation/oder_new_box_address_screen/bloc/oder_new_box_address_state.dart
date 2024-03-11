// ignore_for_file: must_be_immutable

part of 'oder_new_box_address_bloc.dart';

/// Represents the state of OderNewBoxAddress in the application.
class OderNewBoxAddressState extends Equatable {
  OderNewBoxAddressState({
    this.phoneNumberController,
    this.fullNameController,
    this.addressController,
    this.cityController,
    this.addressController1,
    this.addressController2,
    this.streetValueController,
    this.oderNewBoxAddressModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? fullNameController;

  TextEditingController? addressController;

  TextEditingController? cityController;

  TextEditingController? addressController1;

  TextEditingController? addressController2;

  TextEditingController? streetValueController;

  OderNewBoxAddressModel? oderNewBoxAddressModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        fullNameController,
        addressController,
        cityController,
        addressController1,
        addressController2,
        streetValueController,
        oderNewBoxAddressModelObj,
      ];

  OderNewBoxAddressState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? fullNameController,
    TextEditingController? addressController,
    TextEditingController? cityController,
    TextEditingController? addressController1,
    TextEditingController? addressController2,
    TextEditingController? streetValueController,
    OderNewBoxAddressModel? oderNewBoxAddressModelObj,
  }) {
    return OderNewBoxAddressState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      fullNameController: fullNameController ?? this.fullNameController,
      addressController: addressController ?? this.addressController,
      cityController: cityController ?? this.cityController,
      addressController1: addressController1 ?? this.addressController1,
      addressController2: addressController2 ?? this.addressController2,
      streetValueController:
          streetValueController ?? this.streetValueController,
      oderNewBoxAddressModelObj:
          oderNewBoxAddressModelObj ?? this.oderNewBoxAddressModelObj,
    );
  }
}
