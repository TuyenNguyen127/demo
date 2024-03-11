import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:app_demo/widgets/custom_drop_down.dart';
import 'models/operate_screen_model.dart';
import 'widgets/button1_item_widget.dart';
import 'models/button1_item_model.dart';
import 'widgets/ordercomponent_item_widget.dart';
import 'models/ordercomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/operate_screen_bloc.dart';

// ignore_for_file: must_be_immutable
class OperateScreenPage extends StatelessWidget {
  const OperateScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OperateScreenBloc>(
      create: (context) => OperateScreenBloc(OperateScreenState(
        operateScreenModelObj: OperateScreenModel(),
      ))
        ..add(OperateScreenInitialEvent()),
      child: OperateScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Container(
              height: 1014.v,
              width: 392.h,
              margin: EdgeInsets.only(bottom: 7.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildTop(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 599.v,
                      width: 392.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          _buildOrderComponent(context),
                          _buildStatus(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 40.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_operate".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTop(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    "lbl_orders".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
                BlocSelector<OperateScreenBloc, OperateScreenState,
                    OperateScreenModel?>(
                  selector: (state) => state.operateScreenModelObj,
                  builder: (context, operateScreenModelObj) {
                    return CustomDropDown(
                      width: 94.h,
                      hintText: "lbl_14_days_ago".tr,
                      items: operateScreenModelObj?.dropdownItemList ?? [],
                      onChanged: (value) {
                        context
                            .read<OperateScreenBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 7.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 182.h,
                  padding: EdgeInsets.symmetric(vertical: 23.v),
                  decoration: AppDecoration.fillBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 46.v,
                        width: 45.h,
                        margin: EdgeInsets.only(
                          top: 11.v,
                          bottom: 48.v,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                              height: 46.v,
                              width: 45.h,
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 27.v,
                              width: 24.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 40.v),
                        child: Column(
                          children: [
                            Text(
                              "lbl_total_orders".tr,
                              style: CustomTextStyles.titleMediumGray80001_1,
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_100".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 156.h,
                      padding: EdgeInsets.symmetric(vertical: 6.v),
                      decoration: AppDecoration.fillBlue10002.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.v),
                            child: _buildSeventyFour(
                              context,
                              dynamicImage1:
                                  ImageConstant.imgCloseLightBlueA70001,
                              dynamicImage2: ImageConstant.imgReply,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 9.v),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_saving".tr,
                                  style:
                                      CustomTextStyles.titleMediumGray80001_1,
                                ),
                                SizedBox(height: 1.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 9.h),
                                    child: Text(
                                      "lbl_60".tr,
                                      style: CustomTextStyles
                                          .titleLargeBlack900SemiBold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Container(
                      width: 156.h,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      decoration: AppDecoration.fillGreenB.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.v),
                            child: _buildSeventyFive(
                              context,
                              playImage: ImageConstant.imgPlayGreenA700,
                              airplaneImage: ImageConstant.imgCheckmark,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Column(
                              children: [
                                Text(
                                  "lbl_received2".tr,
                                  style:
                                      CustomTextStyles.titleMediumGray80001_1,
                                ),
                                SizedBox(height: 6.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 22.h),
                                    child: Text(
                                      "lbl_30".tr,
                                      style: CustomTextStyles
                                          .titleLargeBlack900SemiBold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 13.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 178.h,
                  padding: EdgeInsets.symmetric(vertical: 6.v),
                  decoration: AppDecoration.fillDeepOrangeB.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        child: _buildSeventyFive(
                          context,
                          playImage: ImageConstant.imgPlayOrangeA70001,
                          airplaneImage: ImageConstant.imgAirplane,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.v),
                        child: Column(
                          children: [
                            Text(
                              "lbl_transporting".tr,
                              style: CustomTextStyles.titleMediumGray80001_1,
                            ),
                            SizedBox(height: 5.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 42.h),
                                child: Text(
                                  "lbl_3".tr,
                                  style: CustomTextStyles
                                      .titleLargeBlack900SemiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.fillDeeporange50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.v),
                        child: _buildSeventyFour(
                          context,
                          dynamicImage1: ImageConstant.imgEllipse15,
                          dynamicImage2: ImageConstant.imgThumbsUpWhiteA700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          top: 2.v,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "lbl_rejected".tr,
                              style: CustomTextStyles.titleMediumGray80001_1,
                            ),
                            SizedBox(height: 8.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 28.h),
                                child: Text(
                                  "lbl_7".tr,
                                  style: CustomTextStyles
                                      .titleLargeBlack900SemiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 26.v),
            SizedBox(
              height: 65.v,
              child: BlocSelector<OperateScreenBloc, OperateScreenState,
                  OperateScreenModel?>(
                selector: (state) => state.operateScreenModelObj,
                builder: (context, operateScreenModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 11.h,
                      );
                    },
                    itemCount:
                        operateScreenModelObj?.button1ItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      Button1ItemModel model =
                          operateScreenModelObj?.button1ItemList[index] ??
                              Button1ItemModel();
                      return Button1ItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 15.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        decoration: AppDecoration.fillWhiteA,
        child: BlocSelector<OperateScreenBloc, OperateScreenState,
            OperateScreenModel?>(
          selector: (state) => state.operateScreenModelObj,
          builder: (context, operateScreenModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 12.v,
                );
              },
              itemCount:
                  operateScreenModelObj?.ordercomponentItemList.length ?? 0,
              itemBuilder: (context, index) {
                OrdercomponentItemModel model =
                    operateScreenModelObj?.ordercomponentItemList[index] ??
                        OrdercomponentItemModel();
                return OrdercomponentItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatus(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.h,
          top: 10.v,
          bottom: 558.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 9.v,
                bottom: 6.v,
              ),
              child: Text(
                "lbl_14_days_ago".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Container(
              width: 86.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 6.v,
                    width: 10.h,
                    margin: EdgeInsets.only(
                      top: 11.v,
                      bottom: 13.v,
                    ),
                  ),
                  Container(
                    width: 57.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder15,
                    ),
                    child: Text(
                      "lbl_all".tr,
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 9.v,
                bottom: 6.v,
              ),
              child: Text(
                "lbl_saving2".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 29.h,
                top: 7.v,
                bottom: 8.v,
              ),
              child: Text(
                "lbl_received".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 7.v,
              ),
              child: Text(
                "lbl_transporting2".tr,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyFive(
    BuildContext context, {
    required String playImage,
    required String airplaneImage,
  }) {
    return SizedBox(
      height: 46.v,
      width: 45.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: playImage,
            height: 46.v,
            width: 45.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: airplaneImage,
            height: 19.v,
            width: 22.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyFour(
    BuildContext context, {
    required String dynamicImage1,
    required String dynamicImage2,
  }) {
    return SizedBox(
      height: 46.v,
      width: 45.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: dynamicImage1,
            height: 46.v,
            width: 45.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: dynamicImage2,
            height: 28.v,
            width: 19.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
