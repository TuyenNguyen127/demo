import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Screen - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScreenContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Oder new box - Oderbox".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.oderNewBoxOderboxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Oder new box - Address".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.oderNewBoxAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Oder new box - Checking and Payment".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.oderNewBoxCheckingAndPaymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Type Request".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.typeRequestScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Send box - Choose box".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sendBoxChooseBoxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Send box - Address".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sendBoxAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Send box - Checking and Payment".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.sendBoxCheckingAndPaymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Get back box - Choose box".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.getBackBoxChooseBoxScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Get back box - Address".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.getBackBoxAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Get back box - Checking and Payment".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.getBackBoxCheckingAndPaymentScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
