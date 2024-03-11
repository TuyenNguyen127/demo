import '../../../core/app_export.dart';

/// This class is used in the [button1_item_widget] screen.
class Button1ItemModel {
  Button1ItemModel({
    this.text,
    this.id,
  }) {
    text = text ?? "Create request";
    id = id ?? "";
  }

  String? text;

  String? id;
}
