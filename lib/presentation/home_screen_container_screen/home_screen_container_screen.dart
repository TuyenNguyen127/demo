import 'package:app_demo/presentation/home_screen_page/home_screen_page.dart';
import 'package:app_demo/presentation/ship_screen_two_tab_container_page/ship_screen_two_tab_container_page.dart';
import 'package:app_demo/presentation/operate_screen_page/operate_screen_page.dart';
import 'package:app_demo/presentation/setting_screen_page/setting_screen_page.dart';
import 'package:app_demo/widgets/custom_bottom_bar.dart';
import 'models/home_screen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/home_screen_container_bloc.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {
  HomeScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenContainerBloc>(
        create: (context) => HomeScreenContainerBloc(HomeScreenContainerState(
            homeScreenContainerModelObj: HomeScreenContainerModel()))
          ..add(HomeScreenContainerInitialEvent()),
        child: HomeScreenContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenContainerBloc, HomeScreenContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray20001,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homeScreenPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Ship:
        return AppRoutes.shipScreenTwoTabContainerPage;
      case BottomBarEnum.Operate:
        return AppRoutes.operateScreenPage;
      case BottomBarEnum.Setting:
        return AppRoutes.settingScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage.builder(context);
      case AppRoutes.shipScreenTwoTabContainerPage:
        return ShipScreenTwoTabContainerPage.builder(context);
      case AppRoutes.operateScreenPage:
        return OperateScreenPage.builder(context);
      case AppRoutes.settingScreenPage:
        return SettingScreenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
