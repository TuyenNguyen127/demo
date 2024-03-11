import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/collection_item_widget.dart';
import 'models/collection_item_model.dart';
import 'models/home_screen_model.dart';
import 'widgets/button_item_widget.dart';
import 'models/button_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/home_screen_bloc.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
        create: (context) => HomeScreenBloc(
            HomeScreenState(homeScreenModelObj: HomeScreenModel()))
          ..add(HomeScreenInitialEvent()),
        child: HomeScreenPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          decoration: AppDecoration.fillWhiteA,
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage6,
                                height: 307.v,
                                width: 295.h),
                            SizedBox(height: 17.v),
                            _buildCollection(context)
                          ])),
                      SizedBox(height: 27.v),
                      _buildThirtySix(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 62.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgLock,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 4.v)),
        title: Container(
            width: 105.h,
            margin: EdgeInsets.only(left: 21.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_hello".tr,
                      style: CustomTextStyles.titleSmallff9c9c9c),
                  TextSpan(
                      text: "lbl_nguy_n_tuy_n".tr,
                      style: CustomTextStyles.titleSmallff000000)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 3.h, 1.v)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgUserWhiteA700,
              margin: EdgeInsets.only(left: 11.h, top: 3.v, right: 19.h))
        ]);
  }

  /// Section Widget
  Widget _buildCollection(BuildContext context) {
    return BlocSelector<HomeScreenBloc, HomeScreenState, HomeScreenModel?>(
        selector: (state) => state.homeScreenModelObj,
        builder: (context, homeScreenModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 71.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 14.h,
                  crossAxisSpacing: 14.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: homeScreenModelObj?.collectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                CollectionItemModel model =
                    homeScreenModelObj?.collectionItemList[index] ??
                        CollectionItemModel();
                return CollectionItemWidget(model, onTapCollection: () {
                  onTapCollection(context);
                });
              });
        });
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_services".tr, style: CustomTextStyles.titleMediumGray80001),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: BlocSelector<HomeScreenBloc, HomeScreenState,
                      HomeScreenModel?>(
                  selector: (state) => state.homeScreenModelObj,
                  builder: (context, homeScreenModelObj) {
                    return GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 66.v,
                            crossAxisCount: 4,
                            mainAxisSpacing: 11.h,
                            crossAxisSpacing: 11.h),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            homeScreenModelObj?.buttonItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          ButtonItemModel model =
                              homeScreenModelObj?.buttonItemList[index] ??
                                  ButtonItemModel();
                          return ButtonItemWidget(model);
                        });
                  })),
          SizedBox(height: 18.v)
        ]));
  }

  /// Navigates to the typeRequestScreen when the action is triggered.
  onTapCollection(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.typeRequestScreen,
    );
  }
}
