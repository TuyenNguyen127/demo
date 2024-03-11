// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [oder_new_box_address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OderNewBoxAddressModel extends Equatable {
  OderNewBoxAddressModel({
    this.selectedDate,
    this.date = "Date ",
  }) {
    selectedDate = selectedDate ?? DateTime.now();
  }

  DateTime? selectedDate;

  String date;

  OderNewBoxAddressModel copyWith({
    DateTime? selectedDate,
    String? date,
  }) {
    return OderNewBoxAddressModel(
      selectedDate: selectedDate ?? this.selectedDate,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [selectedDate, date];
}
