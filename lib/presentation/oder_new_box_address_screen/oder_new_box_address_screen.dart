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
import 'models/oder_new_box_address_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/oder_new_box_address_bloc.dart';

// ignore_for_file: must_be_immutable
class OderNewBoxAddressScreen extends StatelessWidget {
  OderNewBoxAddressScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<OderNewBoxAddressBloc>(
        create: (context) => OderNewBoxAddressBloc(OderNewBoxAddressState(
            oderNewBoxAddressModelObj: OderNewBoxAddressModel()))
          ..add(OderNewBoxAddressInitialEvent()),
        child: OderNewBoxAddressScreen());
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
                      _buildTwentySeven(context),
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
                                                      _buildPhoneNumber(
                                                          context),
                                                      SizedBox(height: 18.v),
                                                      _buildFullName(context),
                                                      SizedBox(height: 18.v),
                                                      _buildTime(context),
                                                      SizedBox(height: 18.v),
                                                      _buildAddress(context),
                                                      SizedBox(height: 21.v),
                                                      _buildCity1(context),
                                                      SizedBox(height: 18.v),
                                                      _buildAddress3(context),
                                                      SizedBox(height: 20.v),
                                                      _buildImageTen(context)
                                                    ])))
                                      ]))))
                    ]))),
            bottomNavigationBar: _buildArrowRight(context)));
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
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
          SizedBox(height: 32.v)
        ]));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
            TextEditingController?>(
        selector: (state) => state.phoneNumberController,
        builder: (context, phoneNumberController) {
          return CustomTextFormField(
              controller: phoneNumberController,
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
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
            TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return CustomTextFormField(
              controller: fullNameController,
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
  Widget _buildTime(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTime(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
            decoration: AppDecoration.outlineGray200
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
                          String?>(
                      selector: (state) =>
                          state.oderNewBoxAddressModelObj!.date,
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
  Widget _buildAddress(BuildContext context) {
    return BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
            TextEditingController?>(
        selector: (state) => state.addressController,
        builder: (context, addressController) {
          return CustomTextFormField(
              controller: addressController,
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
  Widget _buildCity(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h, bottom: 1.v),
            child: BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.cityController,
                builder: (context, cityController) {
                  return CustomTextFormField(
                      controller: cityController, hintText: "lbl_city".tr);
                })));
  }

  /// Section Widget
  Widget _buildAddress1(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.addressController1,
                builder: (context, addressController1) {
                  return CustomTextFormField(
                      controller: addressController1,
                      hintText: "lbl_address".tr);
                })));
  }

  /// Section Widget
  Widget _buildCity1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildCity(context), _buildAddress1(context)]);
  }

  /// Section Widget
  Widget _buildAddress2(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h, bottom: 1.v),
            child: BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.addressController2,
                builder: (context, addressController2) {
                  return CustomTextFormField(
                      controller: addressController2,
                      hintText: "lbl_address".tr);
                })));
  }

  /// Section Widget
  Widget _buildStreetValue(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: BlocSelector<OderNewBoxAddressBloc, OderNewBoxAddressState,
                    TextEditingController?>(
                selector: (state) => state.streetValueController,
                builder: (context, streetValueController) {
                  return CustomTextFormField(
                      controller: streetValueController,
                      hintText: "lbl_street".tr,
                      textInputAction: TextInputAction.done);
                })));
  }

  /// Section Widget
  Widget _buildAddress3(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildAddress2(context), _buildStreetValue(context)]);
  }

  /// Section Widget
  Widget _buildImageTen(BuildContext context) {
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
  Widget _buildArrowRight(BuildContext context) {
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
  /// current [oderNewBoxAddressModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapTime(BuildContext context) async {
    var initialState = BlocProvider.of<OderNewBoxAddressBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      initialState.oderNewBoxAddressModelObj?.selectedDate = dateTime;
      context.read<OderNewBoxAddressBloc>().add(ChangeDateEvent(
          date: dateTime.format(pattern: dateTimeFormatPattern)));
    }
  }

  /// Navigates to the oderNewBoxOderboxScreen when the action is triggered.
  onTapBtnArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.oderNewBoxOderboxScreen,
    );
  }

  /// Navigates to the oderNewBoxCheckingAndPaymentScreen when the action is triggered.
  onTapBtnArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.oderNewBoxCheckingAndPaymentScreen,
    );
  }
}
