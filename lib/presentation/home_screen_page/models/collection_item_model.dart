import '../../../core/app_export.dart';

/// This class is used in the [collection_item_widget] screen.
class CollectionItemModel {
  CollectionItemModel({
    this.requestImage1,
    this.requestImage2,
    this.requestText,
    this.id,
  }) {
    requestImage1 = requestImage1 ?? ImageConstant.imgTelevision;
    requestImage2 = requestImage2 ?? ImageConstant.imgClose;
    requestText = requestText ?? "New \nrequest";
    id = id ?? "";
  }

  String? requestImage1;

  String? requestImage2;

  String? requestText;

  String? id;
}
