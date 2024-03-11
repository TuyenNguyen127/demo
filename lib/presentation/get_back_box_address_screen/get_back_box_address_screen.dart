import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:app_demo/core/utils/validation_functions.dart';
import 'package:app_demo/widgets/custom_text_form_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:app_demo/widgets/custom_icon_button.dart';
import 'models/get_back_box_address_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/get_back_box_address_bloc.dart';

// ignore_for_file: must_be_immutable
class GetBackBoxAddressScreen extends StatelessWidget {
  GetBackBoxAddressScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<GetBackBoxAddressBloc>(
        create: (context) => GetBackBoxAddressBloc(GetBackBoxAddressState(
            getBackBoxAddressModelObj: GetBackBoxAddressModel()))
          ..add(GetBackBoxAddressInitialEvent()),
        child: GetBackBoxAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 392.h,
                    child: Column(children: [
                      _buildNineColumn(context),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: 812.v,
                                  width: 392.h,
                                  margin: EdgeInsets.only(bottom: 5.v),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                height: 806.v, width: 392.h)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 20.h),
                                                decoration: AppDecoration
                                                    .fillWhiteA
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _buildPhoneNumberEditText(
                                                          context),
                                                      SizedBox(height: 18.v),
                                                      _buildFullNameEditText(
                                                          context),
                                                      SizedBox(height: 18.v),
                                                      _buildTimeRow(context),
                                                      SizedBox(height: 18.v),
                                                      _buildAddressEditText(
                                                          context),
                                                      SizedBox(height: 21.v),
                                                      _buildCity(context),
                                                      SizedBox(height: 18.v),
                                                      _buildAddress(context),
                                                      SizedBox(height: 20.v),
                                                      _buildImageTenMap(context)
                                                    ])))
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildArrowRightRow(context)));
  }

  /// Section Widget
  Widget _buildNineColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h),
        padding: EdgeInsets.symmetric(vertical: 21.v),
        decoration: AppDecoration.fillRedA,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: 38.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgVectorWhiteA700,
                  margin: EdgeInsets.only(left: 26.h, top: 2.v, bottom: 2.v),
                  onTap: () {
                    onTapVector(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_get_back".tr)),
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
                                decoration: AppDecoration.outlineGray8001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Text("lbl_1".tr,
                                    style: theme.textTheme.titleMedium)),
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("lbl_oder_box".tr,
                                    style: CustomTextStyles.bodySmallWhiteA700))
                          ])),
                          StepperData(
                              iconWidget: Column(children: [
                            Container(
                                width: 35.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 7.v),
                                decoration: AppDecoration.outlineGray800
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder15),
                                child: Text("lbl_2".tr,
                                    style:
                                        CustomTextStyles.titleMediumRedA200)),
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("lbl_address".tr,
                                    style:
                                        CustomTextStyles.labelLargeWhiteA700))
                          ])),
                          StepperData()
                        ]),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text("msg_checking_and_payment".tr,
                            style: CustomTextStyles.labelLargeWhiteA70013))
                  ]))),
          SizedBox(height: 30.v)
        ]));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
            TextEditingController?>(
        selector: (state) => state.phoneNumberEditTextController,
        builder: (context, phoneNumberEditTextController) {
          return CustomTextFormField(
              controller: phoneNumberEditTextController,
              hintText: "lbl_phone_number".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
            TextEditingController?>(
        selector: (state) => state.fullNameEditTextController,
        builder: (context, fullNameEditTextController) {
          return CustomTextFormField(
              controller: fullNameEditTextController,
              hintText: "lbl_full_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildTimeRow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTimeRow(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
            decoration: AppDecoration.outlineGray200
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
                          String?>(
                      selector: (state) =>
                          state.getBackBoxAddressModelObj!.date,
                      builder: (context, date) {
                        return Text(date ?? "",
                            style: theme.textTheme.bodyLarge);
                      }),
                  CustomImageView(
                      imagePath: ImageConstant.imgCalendarBlack900,
                      height: 15.v,
                      width: 13.h,
                      margin:
                          EdgeInsets.only(top: 3.v, right: 6.h, bottom: 2.v))
                ])));
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
            TextEditingController?>(
        selector: (state) => state.addressEditTextController,
        builder: (context, addressEditTextController) {
          return CustomTextFormField(
              controller: addressEditTextController,
              hintText: "lbl_address2".tr,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 15.v, 24.h, 15.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLinkedinBlack900,
                      height: 20.v,
                      width: 14.h)),
              suffixConstraints: BoxConstraints(maxHeight: 50.v),
              contentPadding:
                  EdgeInsets.only(left: 18.h, top: 15.v, bottom: 15.v));
        });
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h, bottom: 1.v),
            child: BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.cityEditTextController,
                builder: (context, cityEditTextController) {
                  return CustomTextFormField(
                      controller: cityEditTextController,
                      hintText: "lbl_city".tr);
                })));
  }

  /// Section Widget
  Widget _buildAddressEditText1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.addressEditTextController1,
                builder: (context, addressEditTextController1) {
                  return CustomTextFormField(
                      controller: addressEditTextController1,
                      hintText: "lbl_address".tr);
                })));
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildCityEditText(context),
      _buildAddressEditText1(context)
    ]);
  }

  /// Section Widget
  Widget _buildAddressEditText2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h, bottom: 1.v),
            child: BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.addressEditTextController2,
                builder: (context, addressEditTextController2) {
                  return CustomTextFormField(
                      controller: addressEditTextController2,
                      hintText: "lbl_address".tr);
                })));
  }

  /// Section Widget
  Widget _buildTypeEditText(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: BlocSelector<GetBackBoxAddressBloc, GetBackBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.typeEditTextController,
                builder: (context, typeEditTextController) {
                  return CustomTextFormField(
                      controller: typeEditTextController,
                      hintText: "lbl_street".tr,
                      textInputAction: TextInputAction.done);
                })));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildAddressEditText2(context),
      _buildTypeEditText(context)
    ]);
  }

  /// Section Widget
  Widget _buildImageTenMap(BuildContext context) {
    return SizedBox(
        height: 219.v,
        width: 350.h,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }

  /// Section Widget
  Widget _buildArrowRightRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 44.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomIconButton(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  onTap: () {
                    onTapBtnArrowRight(context);
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRightGray900))),
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

  /// Navigates to the typeRequestScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.typeRequestScreen,
    );
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [getBackBoxAddressModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapTimeRow(BuildContext context) async {
    var initialState = BlocProvider.of<GetBackBoxAddressBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.getBackBoxAddressModelObj?.selectedDate = dateTime;
      context.read<GetBackBoxAddressBloc>().add(ChangeDateEvent(
          date: dateTime.format(pattern: dateTimeFormatPattern)));
    }
  }

  /// Navigates to the getBackBoxChooseBoxScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getBackBoxChooseBoxScreen,
    );
  }

  /// Navigates to the getBackBoxCheckingAndPaymentScreen when the action is triggered.
  onTapBtnArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getBackBoxCheckingAndPaymentScreen,
    );
  }
}
