import '../../../core/app_export.dart';

/// This class is used in the [orderlist1_item_widget] screen.
class Orderlist1ItemModel {
  Orderlist1ItemModel({
    this.id,
    this.widget,
    this.status,
    this.locationText,
    this.itemsText,
    this.nameText,
    this.phoneText,
    this.noteText,
    this.callshipper,
    this.editorder,
    this.revoke,
    this.fiftyThree,
    this.id,
  }) {
    id = id ?? "ID";
    widget = widget ?? "33589549623491-001";
    status = status ?? "Pending";
    locationText = locationText ?? "144 Xuan Thuy, Cau Giay, Ha Noi";
    itemsText = itemsText ?? "10xQuan Jean; 10xAo so mi; 10xThat lung da";
    nameText = nameText ?? "Nguyễn Văn Tuyển";
    phoneText = phoneText ?? "0123456789";
    noteText = noteText ?? "Nothing";
    callshipper = callshipper ?? "Call shipper";
    editorder = editorder ?? "Edit order";
    revoke = revoke ?? "Revoke";
    fiftyThree = fiftyThree ?? "...";
    id = id ?? "";
  }

  String? id;

  String? widget;

  String? status;

  String? locationText;

  String? itemsText;

  String? nameText;

  String? phoneText;

  String? noteText;

  String? callshipper;

  String? editorder;

  String? revoke;

  String? fiftyThree;

  String? id;
}
