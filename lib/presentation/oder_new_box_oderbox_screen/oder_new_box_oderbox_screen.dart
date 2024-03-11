import 'package:app_demo/widgets/custom_icon_button.dart';
import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:app_demo/widgets/custom_drop_down.dart';
import 'models/oder_new_box_oderbox_model.dart';
import 'package:app_demo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/oder_new_box_oderbox_bloc.dart';

class OderNewBoxOderboxScreen extends StatelessWidget {
  const OderNewBoxOderboxScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OderNewBoxOderboxBloc>(
        create: (context) => OderNewBoxOderboxBloc(OderNewBoxOderboxState(
            oderNewBoxOderboxModelObj: OderNewBoxOderboxModel()))
          ..add(OderNewBoxOderboxInitialEvent()),
        child: OderNewBoxOderboxScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 392.h,
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(height: 10.v),
                  _buildListOrder(context)
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
        height: 392.adaptSize,
        width: 392.adaptSize,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
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
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
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
                                                  horizontal: 13.h,
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .outlineGray800
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder15),
                                              child: Text("lbl_1".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumRedA200)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Text("lbl_oder_box".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallWhiteA700))
                                        ])),
                                        StepperData(
                                            iconWidget: Column(children: [
                                          Container(
                                              width: 35.adaptSize,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.h,
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .outlineGray8001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder15),
                                              child: Text("lbl_2".tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Text("lbl_address".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeWhiteA700))
                                        ])),
                                        StepperData()
                                      ]),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text("msg_checking_and_payment".tr,
                                          style: CustomTextStyles
                                              .labelLargeWhiteA70013))
                                ]))),
                    SizedBox(height: 32.v)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 6.v),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: BlocSelector<
                                    OderNewBoxOderboxBloc,
                                    OderNewBoxOderboxState,
                                    OderNewBoxOderboxModel?>(
                                selector: (state) =>
                                    state.oderNewBoxOderboxModelObj,
                                builder: (context, oderNewBoxOderboxModelObj) {
                                  return CustomDropDown(
                                      icon: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 19.v, 21.h, 19.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgSave,
                                              height: 12.v,
                                              width: 19.h)),
                                      hintText: "lbl_type_box".tr,
                                      hintStyle:
                                          CustomTextStyles.bodyLargeBlack900,
                                      items: oderNewBoxOderboxModelObj
                                              ?.dropdownItemList ??
                                          [],
                                      contentPadding: EdgeInsets.only(
                                          left: 18.h, top: 15.v, bottom: 15.v),
                                      onChanged: (value) {
                                        context
                                            .read<OderNewBoxOderboxBloc>()
                                            .add(ChangeDropDownEvent(
                                                value: value));
                                      });
                                })),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: BlocSelector<
                                    OderNewBoxOderboxBloc,
                                    OderNewBoxOderboxState,
                                    OderNewBoxOderboxModel?>(
                                selector: (state) =>
                                    state.oderNewBoxOderboxModelObj,
                                builder: (context, oderNewBoxOderboxModelObj) {
                                  return CustomDropDown(
                                      icon: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 19.v, 20.h, 19.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgSave,
                                              height: 12.v,
                                              width: 19.h)),
                                      hintText: "lbl_model_box".tr,
                                      hintStyle:
                                          CustomTextStyles.bodyLargeBlack900,
                                      items: oderNewBoxOderboxModelObj
                                              ?.dropdownItemList1 ??
                                          [],
                                      contentPadding: EdgeInsets.only(
                                          left: 19.h, top: 15.v, bottom: 15.v),
                                      onChanged: (value) {
                                        context
                                            .read<OderNewBoxOderboxBloc>()
                                            .add(ChangeDropDown1Event(
                                                value: value));
                                      });
                                })),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: BlocSelector<
                                    OderNewBoxOderboxBloc,
                                    OderNewBoxOderboxState,
                                    OderNewBoxOderboxModel?>(
                                selector: (state) =>
                                    state.oderNewBoxOderboxModelObj,
                                builder: (context, oderNewBoxOderboxModelObj) {
                                  return CustomDropDown(
                                      icon: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 19.v, 20.h, 19.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgSave,
                                              height: 12.v,
                                              width: 19.h)),
                                      hintText: "lbl_service".tr,
                                      items: oderNewBoxOderboxModelObj
                                              ?.dropdownItemList2 ??
                                          [],
                                      contentPadding: EdgeInsets.only(
                                          left: 19.h, top: 15.v, bottom: 15.v),
                                      onChanged: (value) {
                                        context
                                            .read<OderNewBoxOderboxBloc>()
                                            .add(ChangeDropDown2Event(
                                                value: value));
                                      });
                                })),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            width: 100.h,
                            text: "lbl_add".tr,
                            margin: EdgeInsets.only(right: 2.h),
                            buttonStyle: CustomButtonStyles.fillRedA)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildListOrder(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_list_order_box".tr,
                  style: CustomTextStyles.titleMediumBlack900)),
          SizedBox(height: 22.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child:
                  _buildThumbsUp1(context, cartonBoxText: "lbl_carton_box".tr)),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text("lbl_50_x_50_x_50".tr,
                        style: CustomTextStyles.labelLargeIndigo900))
              ])),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildThumbsUp2(context,
                  displayText: "msg_hang_on_washing".tr,
                  quantityText: "lbl_1".tr)),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildThumbsUp1(context,
                  cartonBoxText: "lbl_carton_box2".tr)),
          SizedBox(height: 9.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text("lbl_50_x_100_x_50".tr,
                        style: CustomTextStyles.labelLargeIndigo900))
              ])),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildThumbsUp2(context,
                  displayText: "lbl_nothing".tr, quantityText: "lbl_1".tr)),
          SizedBox(height: 77.v),
          Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: CustomIconButton(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapBtnArrowRight(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowRight))),
          SizedBox(height: 20.v),
          SizedBox(width: 130.h, child: Divider(color: appTheme.gray80001)),
          SizedBox(height: 5.v)
        ]));
  }

  /// Common widget
  Widget _buildThumbsUp1(
    BuildContext context, {
    required String cartonBoxText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgThumbsUpBlueGray300,
          height: 12.v,
          width: 11.h,
          margin: EdgeInsets.only(top: 5.v, bottom: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(cartonBoxText,
              style: CustomTextStyles.titleMediumGreen80002
                  .copyWith(color: appTheme.green80002))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgEditBlack90015x15,
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 2.v))
    ]);
  }

  /// Common widget
  Widget _buildThumbsUp2(
    BuildContext context, {
    required String displayText,
    required String quantityText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 9.v,
              width: 11.h,
              margin: EdgeInsets.only(top: 4.v, bottom: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(displayText,
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: appTheme.lightBlue800))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: CustomIconButton(
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  child: CustomImageView())),
          Container(
              width: 38.h,
              margin: EdgeInsets.only(left: 5.h, bottom: 2.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 1.v),
              decoration: AppDecoration.outlineBluegray3001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text(quantityText,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.black900))),
          Padding(
              padding: EdgeInsets.only(left: 5.h, bottom: 3.v),
              child: CustomIconButton(
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  child: CustomImageView()))
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
