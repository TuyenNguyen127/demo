// ignore_for_file: must_be_immutable

part of 'send_box_address_bloc.dart';

/// Represents the state of SendBoxAddress in the application.
class SendBoxAddressState extends Equatable {
  SendBoxAddressState({
    this.phoneNumberController,
    this.fullNameController,
    this.addressController,
    this.cityController,
    this.addressController1,
    this.addressController2,
    this.streetValueController,
    this.sendBoxAddressModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? fullNameController;

  TextEditingController? addressController;

  TextEditingController? cityController;

  TextEditingController? addressController1;

  TextEditingController? addressController2;

  TextEditingController? streetValueController;

  SendBoxAddressModel? sendBoxAddressModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        fullNameController,
        addressController,
        cityController,
        addressController1,
        addressController2,
        streetValueController,
        sendBoxAddressModelObj,
      ];

  SendBoxAddressState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? fullNameController,
    TextEditingController? addressController,
    TextEditingController? cityController,
    TextEditingController? addressController1,
    TextEditingController? addressController2,
    TextEditingController? streetValueController,
    SendBoxAddressModel? sendBoxAddressModelObj,
  }) {
    return SendBoxAddressState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      fullNameController: fullNameController ?? this.fullNameController,
      addressController: addressController ?? this.addressController,
      cityController: cityController ?? this.cityController,
      addressController1: addressController1 ?? this.addressController1,
      addressController2: addressController2 ?? this.addressController2,
      streetValueController:
          streetValueController ?? this.streetValueController,
      sendBoxAddressModelObj:
          sendBoxAddressModelObj ?? this.sendBoxAddressModelObj,
    );
  }
}
