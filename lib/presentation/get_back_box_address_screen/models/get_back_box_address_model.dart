// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [get_back_box_address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GetBackBoxAddressModel extends Equatable {
  GetBackBoxAddressModel({
    this.selectedDate,
    this.date = "Date ",
  }) {
    selectedDate = selectedDate ?? DateTime.now();
  }

  DateTime? selectedDate;

  String date;

  GetBackBoxAddressModel copyWith({
    DateTime? selectedDate,
    String? date,
  }) {
    return GetBackBoxAddressModel(
      selectedDate: selectedDate ?? this.selectedDate,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [selectedDate, date];
}
