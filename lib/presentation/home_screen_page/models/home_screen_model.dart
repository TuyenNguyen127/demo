// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'collection_item_model.dart';
import 'button_item_model.dart';

/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel extends Equatable {
  HomeScreenModel({
    this.collectionItemList = const [],
    this.buttonItemList = const [],
  }) {}

  List<CollectionItemModel> collectionItemList;

  List<ButtonItemModel> buttonItemList;

  HomeScreenModel copyWith({
    List<CollectionItemModel>? collectionItemList,
    List<ButtonItemModel>? buttonItemList,
  }) {
    return HomeScreenModel(
      collectionItemList: collectionItemList ?? this.collectionItemList,
      buttonItemList: buttonItemList ?? this.buttonItemList,
    );
  }

  @override
  List<Object?> get props => [collectionItemList, buttonItemList];
}
