import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:app_demo/widgets/custom_checkbox_button.dart';
import 'package:app_demo/widgets/custom_icon_button.dart';
import 'models/get_back_box_checking_and_payment_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/get_back_box_checking_and_payment_bloc.dart';

class GetBackBoxCheckingAndPaymentScreen extends StatelessWidget {
  const GetBackBoxCheckingAndPaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GetBackBoxCheckingAndPaymentBloc>(
        create: (context) => GetBackBoxCheckingAndPaymentBloc(
            GetBackBoxCheckingAndPaymentState(
                getBackBoxCheckingAndPaymentModelObj:
                    GetBackBoxCheckingAndPaymentModel()))
          ..add(GetBackBoxCheckingAndPaymentInitialEvent()),
        child: GetBackBoxCheckingAndPaymentScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 392.h,
                child: Column(children: [
                  _buildFifteen(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 868.v,
                              width: 392.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                            height: 806.v, width: 392.h)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 21.v),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text("lbl_request_data".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeGray800),
                                                  SizedBox(height: 16.v),
                                                  Divider(),
                                                  SizedBox(height: 13.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 31.h),
                                                          child: Text(
                                                              "msg_packaging_requirements"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeBold))),
                                                  SizedBox(height: 11.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 41.h),
                                                          child: Text(
                                                              "msg_id_33589549623491_001"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeGreen600))),
                                                  SizedBox(height: 9.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 32.h),
                                                      child: _buildItems(
                                                          context,
                                                          itemsText:
                                                              "lbl_model".tr,
                                                          itemDetailsText:
                                                              "msg_box_50x100x1003"
                                                                  .tr)),
                                                  SizedBox(height: 11.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 32.h),
                                                      child: _buildItems(
                                                          context,
                                                          itemsText:
                                                              "lbl_items".tr,
                                                          itemDetailsText:
                                                              "msg_10xquan_jean_10xao"
                                                                  .tr)),
                                                  SizedBox(height: 11.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 35.h),
                                                      child: _buildPrices(
                                                          context,
                                                          pricesText:
                                                              "lbl_services2"
                                                                  .tr,
                                                          priceText:
                                                              "msg_washing_keeping"
                                                                  .tr)),
                                                  SizedBox(height: 8.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 32.h),
                                                      child: _buildPrices(
                                                          context,
                                                          pricesText:
                                                              "lbl_prices".tr,
                                                          priceText:
                                                              "lbl_200000".tr)),
                                                  SizedBox(height: 5.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 41.h),
                                                          child: Text(
                                                              "msg_id_33589549623491_002"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeGreen600))),
                                                  SizedBox(height: 9.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 31.h),
                                                      child: _buildItems(
                                                          context,
                                                          itemsText:
                                                              "lbl_model".tr,
                                                          itemDetailsText:
                                                              "msg_box_50x100x1003"
                                                                  .tr)),
                                                  SizedBox(height: 11.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 31.h),
                                                      child: _buildItems(
                                                          context,
                                                          itemsText:
                                                              "lbl_items".tr,
                                                          itemDetailsText:
                                                              "msg_10xquan_jean_10xao"
                                                                  .tr)),
                                                  SizedBox(height: 11.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 41.h,
                                                          right: 32.h),
                                                      child: _buildPrices(
                                                          context,
                                                          pricesText:
                                                              "lbl_services2"
                                                                  .tr,
                                                          priceText:
                                                              "msg_washing_keeping"
                                                                  .tr)),
                                                  SizedBox(height: 8.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 44.h,
                                                          right: 32.h),
                                                      child: _buildPrices(
                                                          context,
                                                          pricesText:
                                                              "lbl_prices".tr,
                                                          priceText:
                                                              "lbl_200000".tr)),
                                                  SizedBox(height: 8.v),
                                                  Divider(
                                                      color: appTheme.gray300,
                                                      indent: 41.h,
                                                      endIndent: 30.h),
                                                  SizedBox(height: 7.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 32.h),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text: "lbl_total"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleSmall),
                                                                    TextSpan(
                                                                        text: "lbl_200000"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleSmall)
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left))),
                                                  SizedBox(height: 17.v),
                                                  Divider(),
                                                  SizedBox(height: 17.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 30.h),
                                                          child: Text(
                                                              "lbl_address".tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeBold))),
                                                  SizedBox(height: 12.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 40.h,
                                                          right: 32.h),
                                                      child: _buildItems(
                                                          context,
                                                          itemsText:
                                                              "lbl_full_name2"
                                                                  .tr,
                                                          itemDetailsText:
                                                              "lbl_long_do"
                                                                  .tr)),
                                                  SizedBox(height: 13.v),
                                                  _buildPhone(context),
                                                  SizedBox(height: 10.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 40.h,
                                                          right: 32.h),
                                                      child: _buildItems(
                                                          context,
                                                          itemsText:
                                                              "lbl_address".tr,
                                                          itemDetailsText:
                                                              "msg_tay_mo_nam_tu_liem"
                                                                  .tr)),
                                                  SizedBox(height: 67.v),
                                                  _buildAgreeTheTermsOfUse(
                                                      context),
                                                  SizedBox(height: 18.v),
                                                  _buildArrowRight(context),
                                                  SizedBox(height: 24.v)
                                                ])))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(vertical: 19.v),
        decoration: AppDecoration.fillRedA,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: 38.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgVectorWhiteA700,
                  margin: EdgeInsets.only(left: 26.h, top: 4.v),
                  onTap: () {
                    onTapVector(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_get_back".tr)),
          SizedBox(height: 17.v),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 57.v,
                  width: 333.h,
                  margin: EdgeInsets.only(right: 7.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            height: 35.v,
                            width: 270.h,
                            margin: EdgeInsets.only(left: 9.h))),
                    AnotherStepper(
                        iconHeight: 35,
                        iconWidth: 35,
                        stepperDirection: Axis.horizontal,
                        activeIndex: 1,
                        barThickness: 1,
                        activeBarColor: appTheme.gray800,
                        inActiveBarColor: appTheme.gray800,
                        inverted: true,
                        stepperList: [
                          StepperData(
                              iconWidget: Container(
                                  width: 35.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineGray8001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder15),
                                  child: Text("lbl_1".tr,
                                      style: theme.textTheme.titleMedium)),
                              title: StepperText("lbl_oder_box".tr,
                                  textStyle:
                                      CustomTextStyles.bodySmallWhiteA700)),
                          StepperData(
                              iconWidget: Container(
                                  width: 35.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineGray8001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder15),
                                  child: Text("lbl_2".tr,
                                      style: theme.textTheme.titleMedium)),
                              title: StepperText("lbl_address".tr,
                                  textStyle:
                                      CustomTextStyles.labelLargeWhiteA700)),
                          StepperData(
                              iconWidget: Container(
                                  width: 35.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineGray800
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder15),
                                  child: Text("lbl_3".tr,
                                      style:
                                          CustomTextStyles.titleMediumRedA200)),
                              title: StepperText("msg_checking_and_payment".tr,
                                  textStyle:
                                      CustomTextStyles.labelLargeWhiteA70013))
                        ])
                  ]))),
          SizedBox(height: 32.v)
        ]));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 32.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_phone".tr, style: theme.textTheme.bodySmall),
          Text("lbl_0123456789".tr, style: theme.textTheme.bodySmall)
        ]));
  }

  /// Section Widget
  Widget _buildAgreeTheTermsOfUse(BuildContext context) {
    return BlocSelector<GetBackBoxCheckingAndPaymentBloc,
            GetBackBoxCheckingAndPaymentState, bool?>(
        selector: (state) => state.agreeTheTermsOfUse,
        builder: (context, agreeTheTermsOfUse) {
          return CustomCheckboxButton(
              text: "msg_agree_the_terms".tr,
              value: agreeTheTermsOfUse,
              onChange: (value) {
                context
                    .read<GetBackBoxCheckingAndPaymentBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildArrowRight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 37.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(15.h),
              onTap: () {
                onTapBtnArrowRight(context);
              },
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray900)),
          CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(15.h),
              onTap: () {
                onTapBtnArrowRight1(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight))
        ]));
  }

  /// Common widget
  Widget _buildItems(
    BuildContext context, {
    required String itemsText,
    required String itemDetailsText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(itemsText,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(itemDetailsText,
              style: CustomTextStyles.bodySmall10
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Common widget
  Widget _buildPrices(
    BuildContext context, {
    required String pricesText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(pricesText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.black900))),
      RichText(
          text: TextSpan(children: [
            TextSpan(text: " "),
            TextSpan(
                text: "lbl_2000002".tr,
                style: CustomTextStyles.bodySmallffff4040)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the typeRequestScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.typeRequestScreen,
    );
  }

  /// Navigates to the getBackBoxAddressScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getBackBoxAddressScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBtnArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }
}
