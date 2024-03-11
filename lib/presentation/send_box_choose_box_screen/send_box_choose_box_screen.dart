import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:app_demo/widgets/custom_drop_down.dart';
import 'models/send_box_choose_box_model.dart';
import 'package:app_demo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/send_box_choose_box_bloc.dart';

class SendBoxChooseBoxScreen extends StatelessWidget {
  const SendBoxChooseBoxScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SendBoxChooseBoxBloc>(
        create: (context) => SendBoxChooseBoxBloc(SendBoxChooseBoxState(
            sendBoxChooseBoxModelObj: SendBoxChooseBoxModel()))
          ..add(SendBoxChooseBoxInitialEvent()),
        child: SendBoxChooseBoxScreen());
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.h, right: 21.h),
                                        child: BlocSelector<
                                                SendBoxChooseBoxBloc,
                                                SendBoxChooseBoxState,
                                                SendBoxChooseBoxModel?>(
                                            selector: (state) =>
                                                state.sendBoxChooseBoxModelObj,
                                            builder: (context,
                                                sendBoxChooseBoxModelObj) {
                                              return CustomDropDown(
                                                  icon: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              30.h,
                                                              19.v,
                                                              21.h,
                                                              19.v),
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgSave,
                                                          height: 12.v,
                                                          width: 19.h)),
                                                  hintText:
                                                      "lbl_search_by_id".tr,
                                                  alignment: Alignment.center,
                                                  items: sendBoxChooseBoxModelObj
                                                          ?.dropdownItemList ??
                                                      [],
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          left: 18.h,
                                                          top: 15.v,
                                                          bottom: 15.v),
                                                  onChanged: (value) {
                                                    context
                                                        .read<
                                                            SendBoxChooseBoxBloc>()
                                                        .add(
                                                            ChangeDropDownEvent(
                                                                value: value));
                                                  });
                                            })),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.h),
                                        child: BlocSelector<
                                                SendBoxChooseBoxBloc,
                                                SendBoxChooseBoxState,
                                                SendBoxChooseBoxModel?>(
                                            selector: (state) =>
                                                state.sendBoxChooseBoxModelObj,
                                            builder: (context,
                                                sendBoxChooseBoxModelObj) {
                                              return CustomDropDown(
                                                  width: 95.h,
                                                  hintText:
                                                      "lbl_14_days_ago".tr,
                                                  items: sendBoxChooseBoxModelObj
                                                          ?.dropdownItemList1 ??
                                                      [],
                                                  onChanged: (value) {
                                                    context
                                                        .read<
                                                            SendBoxChooseBoxBloc>()
                                                        .add(
                                                            ChangeDropDown1Event(
                                                                value: value));
                                                  });
                                            })),
                                    SizedBox(height: 23.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.whiteA700,
                                                      border: Border.all(
                                                          color:
                                                              appTheme.black900,
                                                          width: 2.h))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 12.h),
                                                  child: Text("lbl_id".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900Medium)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Text(
                                                      "lbl_33589549623491".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900Medium)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBookmark,
                                                  height: 13.v,
                                                  width: 11.h,
                                                  margin: EdgeInsets.only(
                                                      left: 6.h,
                                                      top: 3.v,
                                                      bottom: 3.v))
                                            ])),
                                    SizedBox(height: 12.v),
                                    _buildOrder1(context),
                                    _buildOrder2(context),
                                    Spacer(),
                                    Padding(
                                        padding: EdgeInsets.only(right: 32.h),
                                        child: CustomIconButton(
                                            height: 60.adaptSize,
                                            width: 60.adaptSize,
                                            padding: EdgeInsets.all(15.h),
                                            alignment: Alignment.centerRight,
                                            onTap: () {
                                              onTapBtnArrowRight(context);
                                            },
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowRight))),
                                    SizedBox(height: 20.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 130.h,
                                            child: Divider(
                                                color: appTheme.gray80001)))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.h),
            padding: EdgeInsets.symmetric(vertical: 22.v),
            decoration: AppDecoration.fillRedA,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  leadingWidth: 38.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgVectorWhiteA700,
                      margin:
                          EdgeInsets.only(left: 26.h, top: 2.v, bottom: 2.v),
                      onTap: () {
                        onTapVector(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_send_box".tr)),
              SizedBox(height: 15.v),
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
                                    decoration: AppDecoration.outlineGray800
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder15),
                                    child: Text("lbl_1".tr,
                                        style: CustomTextStyles
                                            .titleMediumRedA200)),
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
              SizedBox(height: 30.v)
            ])));
  }

  /// Section Widget
  Widget _buildOrder1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 10.v),
        decoration: AppDecoration.outlineBluegray3002,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 88.h),
                  child: _buildId(context,
                      iD: "lbl_id".tr, widget: "msg_33589549623491_001".tr)),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(top: 10.v, bottom: 37.v),
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                border: Border.all(
                                    color: appTheme.black900, width: 2.h))),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage11,
                            height: 40.v,
                            width: 47.h,
                            margin: EdgeInsets.only(left: 6.h, bottom: 27.v)),
                        Container(
                            height: 65.v,
                            width: 275.h,
                            margin: EdgeInsets.only(left: 10.h, top: 2.v),
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text(
                                              "msg_10xquan_jean_10xao".tr,
                                              style: CustomTextStyles
                                                  .labelLargeGray80002))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding:
                                              EdgeInsets.only(right: 149.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgGrid,
                                                    height: 12.v,
                                                    width: 11.h),
                                                SizedBox(height: 14.v),
                                                _buildService(context,
                                                    thumbsUpImage: ImageConstant
                                                        .imgThumbsUp,
                                                    text: "msg_hang_on_washing"
                                                        .tr),
                                                SizedBox(height: 8.v),
                                                Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbsUpBlueGray300,
                                                      height: 12.v,
                                                      width: 11.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 1.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h),
                                                      child: Text(
                                                          "lbl_box_50x50x100"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .labelLargeOrangeA700))
                                                ])
                                              ])))
                                ]))
                      ])),
              SizedBox(height: 1.v)
            ]));
  }

  /// Section Widget
  Widget _buildOrder2(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 10.v),
        decoration: AppDecoration.outlineBluegray3002,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 33.v, bottom: 40.v),
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      border:
                          Border.all(color: appTheme.black900, width: 2.h))),
              CustomImageView(
                  imagePath: ImageConstant.imgImage11,
                  height: 40.v,
                  width: 47.h,
                  margin: EdgeInsets.only(left: 6.h, top: 23.v, bottom: 30.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h, bottom: 2.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildId(context,
                                iD: "lbl_id".tr,
                                widget: "msg_33589549623491_002".tr),
                            SizedBox(height: 9.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGrid,
                                      height: 12.v,
                                      width: 11.h,
                                      margin: EdgeInsets.only(bottom: 4.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("msg_10xquan_jean_10xao".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray80002))
                                ])),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: _buildService(context,
                                    thumbsUpImage: ImageConstant.imgThumbsUp,
                                    text: "msg_hang_on_washing".tr)),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: _buildService(context,
                                    thumbsUpImage:
                                        ImageConstant.imgThumbsUpBlueGray300,
                                    text: "msg_box_50x100x100".tr))
                          ])))
            ]));
  }

  /// Common widget
  Widget _buildId(
    BuildContext context, {
    required String iD,
    required String widget,
  }) {
    return Row(children: [
      Text(iD,
          style: CustomTextStyles.labelLargeBluegray300
              .copyWith(color: appTheme.blueGray300)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(widget,
              style: theme.textTheme.labelLarge!
                  .copyWith(color: appTheme.black900))),
      CustomImageView(
          imagePath: ImageConstant.imgComputer,
          height: 13.v,
          width: 11.h,
          margin: EdgeInsets.only(left: 4.h))
    ]);
  }

  /// Common widget
  Widget _buildService(
    BuildContext context, {
    required String thumbsUpImage,
    required String text,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: thumbsUpImage,
          height: 9.v,
          width: 11.h,
          margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(text,
              style: CustomTextStyles.labelLargeLightblue800
                  .copyWith(color: appTheme.lightBlue800)))
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
}
