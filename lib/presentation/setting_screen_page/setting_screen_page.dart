import 'package:app_demo/widgets/custom_icon_button.dart';
import 'models/setting_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/setting_screen_bloc.dart';

// ignore_for_file: must_be_immutable
class SettingScreenPage extends StatelessWidget {
  const SettingScreenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingScreenBloc>(
      create: (context) => SettingScreenBloc(SettingScreenState(
        settingScreenModelObj: SettingScreenModel(),
      ))
        ..add(SettingScreenInitialEvent()),
      child: SettingScreenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingScreenBloc, SettingScreenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 391.h,
              decoration: AppDecoration.fillGray100,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Column(
                    children: [
                      _buildBio(context),
                      SizedBox(height: 10.v),
                      _buildManagement(context),
                      SizedBox(height: 10.v),
                      _buildSettingScreen(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBio(BuildContext context) {
    return SizedBox(
      height: 252.v,
      width: 391.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 68.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.redA200,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 224.v,
              width: 391.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 30.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 105.h,
                        vertical: 61.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 46.v),
                            child: Text(
                              "lbl_nguy_n_tuy_n2".tr,
                              style: CustomTextStyles.titleLargeBlack900_1,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEditBlack900,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              left: 13.h,
                              top: 4.v,
                              bottom: 52.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.all(17.h),
                      decoration: AppDecoration.outlineBluegray100.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder40,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLockWhiteA700,
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildManagement(BuildContext context) {
    return Container(
      width: 391.h,
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_qu_n_l_chung".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillBlueGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSave,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "lbl_a_ch".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingScreen(BuildContext context) {
    return Container(
      width: 391.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_c_i_t".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 29.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30.adaptSize,
                width: 30.adaptSize,
                decoration: AppDecoration.fillRedA700.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder15,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 3.v,
                  bottom: 11.v,
                ),
                child: Text(
                  "lbl_th_ng_b_o".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.fillBlueGray,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkBlack900,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 7.v,
                  bottom: 7.v,
                ),
                child: Text(
                  "lbl_b_o_m_t".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
