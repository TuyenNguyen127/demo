import '../../../core/app_export.dart';

/// This class is used in the [orderlist_item_widget] screen.
class OrderlistItemModel {
  OrderlistItemModel({
    this.id,
    this.widget,
    this.status,
    this.locationText,
    this.itemsText,
    this.serviceText,
    this.weightText,
    this.noteText,
    this.callShipperText,
    this.editOrderText,
    this.revokeText,
    this.moreOptionsText,
    this.id,
  }) {
    id = id ?? "ID";
    widget = widget ?? "33589549623491-001";
    status = status ?? "Pending";
    locationText = locationText ?? "144 Xuan Thuy, Cau Giay, Ha Noi";
    itemsText = itemsText ?? "10xQuan Jean; 10xAo so mi; 10xThat lung da";
    serviceText = serviceText ?? "Hang On, Washing";
    weightText = weightText ?? "Box";
    noteText = noteText ?? "Nothing";
    callShipperText = callShipperText ?? "Call shipper";
    editOrderText = editOrderText ?? "Edit order";
    revokeText = revokeText ?? "Revoke";
    moreOptionsText = moreOptionsText ?? "...";
    id = id ?? "";
  }

  String? id;

  String? widget;

  String? status;

  String? locationText;

  String? itemsText;

  String? serviceText;

  String? weightText;

  String? noteText;

  String? callShipperText;

  String? editOrderText;

  String? revokeText;

  String? moreOptionsText;

  String? id;
}
