import '../../../core/app_export.dart';

/// This class is used in the [ordercomponent_item_widget] screen.
class OrdercomponentItemModel {
  OrdercomponentItemModel({
    this.id,
    this.widget,
    this.statusText,
    this.itemText,
    this.serviceText,
    this.weightText,
    this.priceText,
    this.startDateText,
    this.id,
  }) {
    id = id ?? "ID";
    widget = widget ?? "33589549623491-001";
    statusText = statusText ?? "Saving";
    itemText = itemText ?? "10xQuan Jean; 10xAo so mi; 10xThat lung da";
    serviceText = serviceText ?? "Hang On, Washing";
    weightText = weightText ?? "Box | 50x50x100 | 20kg";
    priceText = priceText ?? "10000đ / day ";
    startDateText = startDateText ?? "Start at: 20/12/2023";
    id = id ?? "";
  }

  String? id;

  String? widget;

  String? statusText;

  String? itemText;

  String? serviceText;

  String? weightText;

  String? priceText;

  String? startDateText;

  String? id;
}
