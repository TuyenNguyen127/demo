import 'package:app_demo/widgets/app_bar/custom_app_bar.dart';
import 'package:app_demo/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_demo/widgets/app_bar/appbar_title.dart';
import 'package:app_demo/widgets/custom_text_form_field.dart';
import 'models/type_request_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/type_request_bloc.dart';

class TypeRequestScreen extends StatelessWidget {
  const TypeRequestScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TypeRequestBloc>(
        create: (context) => TypeRequestBloc(
            TypeRequestState(typeRequestModelObj: TypeRequestModel()))
          ..add(TypeRequestInitialEvent()),
        child: TypeRequestScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: 392.h,
                child: Column(children: [
                  _buildOrderNewBox(context),
                  SizedBox(height: 6.v),
                  _buildSendBoxToWarehouseValue(context),
                  SizedBox(height: 6.v),
                  _buildGetBackBoxValue(context),
                  SizedBox(height: 6.v),
                  _buildHelpValue(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 66.v,
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorWhiteA700,
            margin: EdgeInsets.only(left: 26.h, top: 24.v, bottom: 21.v),
            onTap: () {
              onTapVector(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_request".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildOrderNewBox(BuildContext context) {
    return BlocSelector<TypeRequestBloc, TypeRequestState,
            TextEditingController?>(
        selector: (state) => state.orderNewBoxController,
        builder: (context, orderNewBoxController) {
          return CustomTextFormField(
              controller: orderNewBoxController,
              hintText: "lbl_oder_new_box".tr,
              hintStyle: CustomTextStyles.titleMediumBlack900_1,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 26.h, vertical: 25.v),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
        });
  }

  /// Section Widget
  Widget _buildSendBoxToWarehouseValue(BuildContext context) {
    return BlocSelector<TypeRequestBloc, TypeRequestState,
            TextEditingController?>(
        selector: (state) => state.sendBoxToWarehouseValueController,
        builder: (context, sendBoxToWarehouseValueController) {
          return CustomTextFormField(
              controller: sendBoxToWarehouseValueController,
              hintText: "msg_send_box_to_warehouse".tr,
              hintStyle: CustomTextStyles.titleMediumBlack900_1,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 26.h, vertical: 25.v),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
        });
  }

  /// Section Widget
  Widget _buildGetBackBoxValue(BuildContext context) {
    return BlocSelector<TypeRequestBloc, TypeRequestState,
            TextEditingController?>(
        selector: (state) => state.getBackBoxValueController,
        builder: (context, getBackBoxValueController) {
          return CustomTextFormField(
              controller: getBackBoxValueController,
              hintText: "lbl_get_back_box".tr,
              hintStyle: CustomTextStyles.titleMediumBlack900_1,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 26.h, vertical: 25.v),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
        });
  }

  /// Section Widget
  Widget _buildHelpValue(BuildContext context) {
    return BlocSelector<TypeRequestBloc, TypeRequestState,
            TextEditingController?>(
        selector: (state) => state.helpValueController,
        builder: (context, helpValueController) {
          return CustomTextFormField(
              controller: helpValueController,
              hintText: "lbl_help".tr,
              hintStyle: CustomTextStyles.titleMediumBlack900_1,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 26.h, vertical: 25.v),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA);
        });
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }
}
