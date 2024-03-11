import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/collection_item_model.dart';
import '../models/button_item_model.dart';
import 'package:app_demo/presentation/home_screen_page/models/home_screen_model.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';

/// A bloc that manages the state of a HomeScreen according to the event that is dispatched to it.
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(HomeScreenState initialState) : super(initialState) {
    on<HomeScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenInitialEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(
        homeScreenModelObj: state.homeScreenModelObj?.copyWith(
            collectionItemList: fillCollectionItemList(),
            buttonItemList: fillButtonItemList())));
  }

  List<CollectionItemModel> fillCollectionItemList() {
    return [
      CollectionItemModel(
          requestImage1: ImageConstant.imgTelevision,
          requestImage2: ImageConstant.imgClose,
          requestText: "New \nrequest"),
      CollectionItemModel(requestText: "Checking order")
    ];
  }

  List<ButtonItemModel> fillButtonItemList() {
    return [
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "Create request"),
      ButtonItemModel(text: "More services")
    ];
  }
}
