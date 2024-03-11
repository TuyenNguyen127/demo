import 'package:app_demo/widgets/custom_drop_down.dart';
import 'models/ship_screen_two_model.dart';
import 'widgets/orderlist1_item_widget.dart';
import 'models/orderlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';
import 'bloc/ship_screen_two_bloc.dart';

// ignore_for_file: must_be_immutable
class ShipScreenTwoPage extends StatefulWidget {
  const ShipScreenTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ShipScreenTwoPageState createState() => ShipScreenTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ShipScreenTwoBloc>(
      create: (context) => ShipScreenTwoBloc(ShipScreenTwoState(
        shipScreenTwoModelObj: ShipScreenTwoModel(),
      ))
        ..add(ShipScreenTwoInitialEvent()),
      child: ShipScreenTwoPage(),
    );
  }
}

class ShipScreenTwoPageState extends State<ShipScreenTwoPage>
    with AutomaticKeepAliveClientMixin<ShipScreenTwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 143.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Column(
                      children: [
                        _buildStatusRow(context),
                        SizedBox(height: 19.v),
                        SizedBox(
                          height: 652.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              _buildTotalRow(context),
                              _buildOrderList(context),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: BlocSelector<ShipScreenTwoBloc, ShipScreenTwoState,
                    ShipScreenTwoModel?>(
                  selector: (state) => state.shipScreenTwoModelObj,
                  builder: (context, shipScreenTwoModelObj) {
                    return CustomDropDown(
                      width: 95.h,
                      hintText: "lbl_14_days_ago".tr,
                      items: shipScreenTwoModelObj?.dropdownItemList ?? [],
                      onChanged: (value) {
                        context
                            .read<ShipScreenTwoBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              Container(
                width: 57.h,
                margin: EdgeInsets.only(top: 1.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder15,
                ),
                child: Text(
                  "lbl_all".tr,
                  style: CustomTextStyles.bodySmallWhiteA700,
                ),
              ),
              Container(
                width: 61.h,
                margin: EdgeInsets.only(top: 1.v),
                padding: EdgeInsets.all(6.h),
                decoration: AppDecoration.outlineBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder15,
                ),
                child: Text(
                  "lbl_pending".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Container(
                width: 67.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.outlineBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder15,
                ),
                child: Text(
                  "lbl_waiting".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 69.h,
          margin: EdgeInsets.only(left: 10.h),
          padding: EdgeInsets.symmetric(
            horizontal: 2.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder15,
          ),
          child: Text(
            "lbl_delivering".tr,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTotalRow(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 11.h,
          bottom: 637.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_20_orders".tr,
              style: CustomTextStyles.labelLargeBluegray300,
            ),
            Text(
              "lbl_choose_order".tr,
              style: CustomTextStyles.labelLargeLightblueA700,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: BlocSelector<ShipScreenTwoBloc, ShipScreenTwoState,
            ShipScreenTwoModel?>(
          selector: (state) => state.shipScreenTwoModelObj,
          builder: (context, shipScreenTwoModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount: shipScreenTwoModelObj?.orderlist1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Orderlist1ItemModel model =
                    shipScreenTwoModelObj?.orderlist1ItemList[index] ??
                        Orderlist1ItemModel();
                return Orderlist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
