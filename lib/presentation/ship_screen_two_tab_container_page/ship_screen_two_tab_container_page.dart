import 'models/ship_screen_two_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/ship_screen_two_tab_container_bloc.dart';

// ignore_for_file: must_be_immutable
class ShipScreenTwoTabContainerPage extends StatefulWidget {
  const ShipScreenTwoTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ShipScreenTwoTabContainerPageState createState() =>
      ShipScreenTwoTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ShipScreenTwoTabContainerBloc>(
      create: (context) =>
          ShipScreenTwoTabContainerBloc(ShipScreenTwoTabContainerState(
        shipScreenTwoTabContainerModelObj: ShipScreenTwoTabContainerModel(),
      ))
            ..add(ShipScreenTwoTabContainerInitialEvent()),
      child: ShipScreenTwoTabContainerPage(),
    );
  }
}

class ShipScreenTwoTabContainerPageState
    extends State<ShipScreenTwoTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShipScreenTwoTabContainerBloc,
        ShipScreenTwoTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: 391.h,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 820.v,
                  width: 391.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 143.v),
                        height: 676.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [],
                        ),
                      ),
                      _buildTabViewColumn(context),
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
  Widget _buildTabViewColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        decoration: AppDecoration.fillGray100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 173.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillRedA,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_ship".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Container(
              height: 100.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
              child: TabBar(
                controller: tabviewController,
                isScrollable: true,
                labelColor: appTheme.redA200,
                labelStyle: TextStyle(
                  fontSize: 18.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: appTheme.blueGray300,
                unselectedLabelStyle: TextStyle(
                  fontSize: 18.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
                indicatorColor: appTheme.redA200,
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_send".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_received".tr,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
