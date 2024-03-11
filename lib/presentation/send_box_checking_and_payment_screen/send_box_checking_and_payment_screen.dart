import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:app_demo/widgets/custom_checkbox_button.dart';
import 'package:app_demo/widgets/custom_icon_button.dart';
import 'models/send_box_checking_and_payment_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/send_box_checking_and_payment_bloc.dart';

class SendBoxCheckingAndPaymentScreen extends StatelessWidget {
  const SendBoxCheckingAndPaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SendBoxCheckingAndPaymentBloc>(
        create: (context) => SendBoxCheckingAndPaymentBloc(
            SendBoxCheckingAndPaymentState(
                sendBoxCheckingAndPaymentModelObj:
                    SendBoxCheckingAndPaymentModel()))
          ..add(SendBoxCheckingAndPaymentInitialEvent()),
        child: SendBoxCheckingAndPaymentScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 392.h,
                child: Container(
                    height: 806.v,
                    width: 392.h,
                    decoration: AppDecoration.fillGray100,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      _buildAppBar(context),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("lbl_request_data".tr,
                                        style:
                                            CustomTextStyles.titleLargeGray800),
                                    SizedBox(height: 16.v),
                                    Divider(),
                                    SizedBox(height: 13.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 31.h),
                                            child: Text(
                                                "msg_packaging_requirements".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBold))),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 41.h),
                                            child: Text(
                                                "msg_id_33589549623491_001".tr,
                                                style: CustomTextStyles
                                                    .labelLargeGreen600))),
                                    SizedBox(height: 9.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 41.h, right: 32.h),
                                        child: _buildItems(context,
                                            itemsText: "lbl_model".tr,
                                            itemDetailsText:
                                                "msg_box_50x100x100".tr)),
                                    SizedBox(height: 11.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 41.h, right: 32.h),
                                        child: _buildItems(context,
                                            itemsText: "lbl_items".tr,
                                            itemDetailsText:
                                                "msg_10xquan_jean_10xao".tr)),
                                    SizedBox(height: 11.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 41.h, right: 35.h),
                                        child: _buildServices(context,
                                            servicesText: "lbl_services2".tr,
                                            washingKeepingText:
                                                "msg_washing_keeping".tr)),
                                    SizedBox(height: 10.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 41.h),
                                            child: Text(
                                                "msg_id_33589549623491_002".tr,
                                                style: CustomTextStyles
                                                    .labelLargeGreen600))),
                                    SizedBox(height: 9.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 41.h, right: 32.h),
                                        child: _buildItems(context,
                                            itemsText: "lbl_model".tr,
                                            itemDetailsText:
                                                "msg_box_50x100x1002".tr)),
                                    SizedBox(height: 11.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 41.h, right: 32.h),
                                        child: _buildItems(context,
                                            itemsText: "lbl_items".tr,
                                            itemDetailsText:
                                                "msg_10xquan_jean_10xao".tr)),
                                    SizedBox(height: 11.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 41.h, right: 35.h),
                                        child: _buildServices(context,
                                            servicesText: "lbl_services2".tr,
                                            washingKeepingText:
                                                "msg_washing_keeping".tr)),
                                    SizedBox(height: 16.v),
                                    Divider(),
                                    SizedBox(height: 13.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Text("lbl_address".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBold))),
                                    SizedBox(height: 12.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 36.h),
                                        child: _buildItems(context,
                                            itemsText: "lbl_full_name2".tr,
                                            itemDetailsText: "lbl_long_do".tr)),
                                    SizedBox(height: 13.v),
                                    _buildPhone(context),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 36.h),
                                        child: _buildItems(context,
                                            itemsText: "lbl_address".tr,
                                            itemDetailsText:
                                                "msg_tay_mo_nam_tu_liem".tr)),
                                    SizedBox(height: 62.v),
                                    _buildAgreeTheTermsOfUse(context),
                                    SizedBox(height: 48.v),
                                    _buildArrowRight(context),
                                    SizedBox(height: 20.v),
                                    SizedBox(
                                        width: 130.h,
                                        child:
                                            Divider(color: appTheme.gray80001))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.h),
            padding: EdgeInsets.symmetric(vertical: 20.v),
            decoration: AppDecoration.fillRedA,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  leadingWidth: 38.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgVectorWhiteA700,
                      margin: EdgeInsets.only(left: 26.h, top: 4.v),
                      onTap: () {
                        onTapVector(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_send_box".tr)),
              SizedBox(height: 17.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 57.v,
                      width: 333.h,
                      margin: EdgeInsets.only(right: 7.h),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        AnotherStepper(
                            iconHeight: 55,
                            iconWidth: 53,
                            stepperDirection: Axis.horizontal,
                            activeIndex: 0,
                            barThickness: 1,
                            inverted: true,
                            stepperList: [
                              StepperData(
                                  iconWidget: Column(children: [
                                Container(
                                    width: 35.adaptSize,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13.h, vertical: 7.v),
                                    decoration: AppDecoration.outlineGray8001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                    child: Text("lbl_1".tr,
                                        style: theme.textTheme.titleMedium)),
                                Padding(
                                    padding: EdgeInsets.only(top: 5.v),
                                    child: Text("lbl_oder_box".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA700))
                              ])),
                              StepperData(
                                  iconWidget: Column(children: [
                                Container(
                                    width: 35.adaptSize,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.h, vertical: 7.v),
                                    decoration: AppDecoration.outlineGray8001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                    child: Text("lbl_2".tr,
                                        style: theme.textTheme.titleMedium)),
                                Padding(
                                    padding: EdgeInsets.only(top: 5.v),
                                    child: Text("lbl_address".tr,
                                        style: CustomTextStyles
                                            .labelLargeWhiteA700))
                              ])),
                              StepperData()
                            ]),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text("msg_checking_and_payment".tr,
                                style: CustomTextStyles.labelLargeWhiteA70013))
                      ]))),
              SizedBox(height: 32.v)
            ])));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_phone".tr, style: theme.textTheme.bodySmall),
          Text("lbl_0123456789".tr, style: theme.textTheme.bodySmall)
        ]));
  }

  /// Section Widget
  Widget _buildAgreeTheTermsOfUse(BuildContext context) {
    return BlocSelector<SendBoxCheckingAndPaymentBloc,
            SendBoxCheckingAndPaymentState, bool?>(
        selector: (state) => state.agreeTheTermsOfUse,
        builder: (context, agreeTheTermsOfUse) {
          return CustomCheckboxButton(
              text: "msg_agree_the_terms".tr,
              value: agreeTheTermsOfUse,
              onChange: (value) {
                context
                    .read<SendBoxCheckingAndPaymentBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildArrowRight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
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
  Widget _buildServices(
    BuildContext context, {
    required String servicesText,
    required String washingKeepingText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(servicesText,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(washingKeepingText,
              style: CustomTextStyles.bodySmallBlue400
                  .copyWith(color: appTheme.blue400)))
    ]);
  }

  /// Navigates to the typeRequestScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.typeRequestScreen,
    );
  }

  /// Navigates to the sendBoxAddressScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sendBoxAddressScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBtnArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }
}
