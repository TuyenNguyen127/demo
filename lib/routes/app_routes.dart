import 'package:flutter/material.dart';
import '../presentation/home_screen_container_screen/home_screen_container_screen.dart';
import '../presentation/oder_new_box_oderbox_screen/oder_new_box_oderbox_screen.dart';
import '../presentation/oder_new_box_address_screen/oder_new_box_address_screen.dart';
import '../presentation/oder_new_box_checking_and_payment_screen/oder_new_box_checking_and_payment_screen.dart';
import '../presentation/type_request_screen/type_request_screen.dart';
import '../presentation/send_box_choose_box_screen/send_box_choose_box_screen.dart';
import '../presentation/send_box_address_screen/send_box_address_screen.dart';
import '../presentation/send_box_checking_and_payment_screen/send_box_checking_and_payment_screen.dart';
import '../presentation/get_back_box_choose_box_screen/get_back_box_choose_box_screen.dart';
import '../presentation/get_back_box_address_screen/get_back_box_address_screen.dart';
import '../presentation/get_back_box_checking_and_payment_screen/get_back_box_checking_and_payment_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String shipScreenOnePage = '/ship_screen_one_page';

  static const String shipScreenTwoPage = '/ship_screen_two_page';

  static const String shipScreenTwoTabContainerPage =
      '/ship_screen_two_tab_container_page';

  static const String operateScreenPage = '/operate_screen_page';

  static const String settingScreenPage = '/setting_screen_page';

  static const String oderNewBoxOderboxScreen = '/oder_new_box_oderbox_screen';

  static const String oderNewBoxAddressScreen = '/oder_new_box_address_screen';

  static const String oderNewBoxCheckingAndPaymentScreen =
      '/oder_new_box_checking_and_payment_screen';

  static const String typeRequestScreen = '/type_request_screen';

  static const String sendBoxChooseBoxScreen = '/send_box_choose_box_screen';

  static const String sendBoxAddressScreen = '/send_box_address_screen';

  static const String sendBoxCheckingAndPaymentScreen =
      '/send_box_checking_and_payment_screen';

  static const String getBackBoxChooseBoxScreen =
      '/get_back_box_choose_box_screen';

  static const String getBackBoxAddressScreen = '/get_back_box_address_screen';

  static const String getBackBoxCheckingAndPaymentScreen =
      '/get_back_box_checking_and_payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreenContainerScreen: HomeScreenContainerScreen.builder,
        oderNewBoxOderboxScreen: OderNewBoxOderboxScreen.builder,
        oderNewBoxAddressScreen: OderNewBoxAddressScreen.builder,
        oderNewBoxCheckingAndPaymentScreen:
            OderNewBoxCheckingAndPaymentScreen.builder,
        typeRequestScreen: TypeRequestScreen.builder,
        sendBoxChooseBoxScreen: SendBoxChooseBoxScreen.builder,
        sendBoxAddressScreen: SendBoxAddressScreen.builder,
        sendBoxCheckingAndPaymentScreen:
            SendBoxCheckingAndPaymentScreen.builder,
        getBackBoxChooseBoxScreen: GetBackBoxChooseBoxScreen.builder,
        getBackBoxAddressScreen: GetBackBoxAddressScreen.builder,
        getBackBoxCheckingAndPaymentScreen:
            GetBackBoxCheckingAndPaymentScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: TypeRequestScreen.builder
      };
}
