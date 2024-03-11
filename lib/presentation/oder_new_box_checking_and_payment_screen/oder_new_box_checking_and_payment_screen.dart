import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:app_demo/widgets/custom_checkbox_button.dart';
import 'package:app_demo/widgets/custom_icon_button.dart';
import 'models/oder_new_box_checking_and_payment_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/oder_new_box_checking_and_payment_bloc.dart';

class OderNewBoxCheckingAndPaymentScreen extends StatelessWidget {
  const OderNewBoxCheckingAndPaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OderNewBoxCheckingAndPaymentBloc>(
        create: (context) => OderNewBoxCheckingAndPaymentBloc(
            OderNewBoxCheckingAndPaymentState(
                oderNewBoxCheckingAndPaymentModelObj:
                    OderNewBoxCheckingAndPaymentModel()))
          ..add(OderNewBoxCheckingAndPaymentInitialEvent()),
        child: OderNewBoxCheckingAndPaymentScreen());
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
                              margin: EdgeInsets.only(top: 132.v),
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
                                    SizedBox(height: 10.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 23.h),
                                            child: Text(
                                                "msg_packaging_requirements".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBold))),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 33.h),
                                            child: Text("lbl_1x_carton_box".tr,
                                                style: CustomTextStyles
                                                    .labelLargeGreen600))),
                                    SizedBox(height: 9.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 40.h),
                                        child: _buildFullNameRow(context,
                                            fullName: "lbl_size".tr,
                                            longDo: "lbl_50_x_50_x_50".tr)),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 39.h),
                                        child: _buildSizeRow(context,
                                            sizeText: "lbl_services2".tr,
                                            sizeValue:
                                                "msg_washing_keeping".tr)),
                                    SizedBox(height: 11.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 33.h),
                                            child: Text("lbl_1x_carton_box".tr,
                                                style: CustomTextStyles
                                                    .labelLargeGreen600))),
                                    SizedBox(height: 6.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 39.h),
                                        child: _buildSizeRow(context,
                                            sizeText: "lbl_size".tr,
                                            sizeValue: "lbl_50_x_50_x_25".tr)),
                                    SizedBox(height: 12.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 38.h),
                                        child: _buildSizeRow(context,
                                            sizeText: "lbl_services2".tr,
                                            sizeValue:
                                                "msg_washing_hang_on".tr)),
                                    SizedBox(height: 7.v),
                                    Divider(),
                                    SizedBox(height: 9.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 23.h),
                                            child: Text("lbl_address".tr,
                                                style: CustomTextStyles
                                                    .labelLargeBold))),
                                    SizedBox(height: 12.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 40.h),
                                        child: _buildFullNameRow(context,
                                            fullName: "lbl_full_name2".tr,
                                            longDo: "lbl_long_do".tr)),
                                    SizedBox(height: 13.v),
                                    _buildPhoneRow(context),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 40.h),
                                        child: _buildFullNameRow(context,
                                            fullName: "lbl_address".tr,
                                            longDo:
                                                "msg_tay_mo_nam_tu_liem".tr)),
                                    Spacer(),
                                    _buildAgreeTheTermsOfUseCheckBox(context),
                                    SizedBox(height: 48.v),
                                    _buildArrowRightRow(context),
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
            padding: EdgeInsets.symmetric(vertical: 19.v),
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
                  title: AppbarTitle(text: "lbl_order_new_box".tr)),
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
  Widget _buildPhoneRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 33.h, right: 40.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_phone".tr, style: theme.textTheme.bodySmall),
          Text("lbl_0123456789".tr, style: theme.textTheme.bodySmall)
        ]));
  }

  /// Section Widget
  Widget _buildAgreeTheTermsOfUseCheckBox(BuildContext context) {
    return BlocSelector<OderNewBoxCheckingAndPaymentBloc,
            OderNewBoxCheckingAndPaymentState, bool?>(
        selector: (state) => state.agreeTheTermsOfUseCheckBox,
        builder: (context, agreeTheTermsOfUseCheckBox) {
          return CustomCheckboxButton(
              text: "msg_agree_the_terms".tr,
              value: agreeTheTermsOfUseCheckBox,
              onChange: (value) {
                context
                    .read<OderNewBoxCheckingAndPaymentBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildArrowRightRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 34.h),
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
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight))
        ]));
  }

  /// Common widget
  Widget _buildSizeRow(
    BuildContext context, {
    required String sizeText,
    required String sizeValue,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(sizeText,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900)),
      Text(sizeValue,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildFullNameRow(
    BuildContext context, {
    required String fullName,
    required String longDo,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(fullName,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.black900))),
      Text(longDo,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the typeRequestScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.typeRequestScreen,
    );
  }

  /// Navigates to the oderNewBoxAddressScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.oderNewBoxAddressScreen,
    );
  }
}
