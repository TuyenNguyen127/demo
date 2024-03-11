import '../models/orderlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';

// ignore: must_be_immutable
class Orderlist1ItemWidget extends StatelessWidget {
  Orderlist1ItemWidget(
    this.orderlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Orderlist1ItemModel orderlist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      orderlist1ItemModelObj.id!,
                      style: CustomTextStyles.labelLargeBluegray300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 3.v,
                    ),
                    child: Text(
                      orderlist1ItemModelObj.widget!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgComputer,
                    height: 13.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 3.v,
                    ),
                  ),
                  Container(
                    width: 66.h,
                    margin: EdgeInsets.only(left: 11.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillAmber1001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      orderlist1ItemModelObj.status!,
                      style: CustomTextStyles.labelMediumBlack900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 14.v,
                    width: 9.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      orderlist1ItemModelObj.locationText!,
                      style: CustomTextStyles.labelLargeTeal900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 100.h,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGrid,
                    height: 12.v,
                    width: 11.h,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      orderlist1ItemModelObj.itemsText!,
                      style: CustomTextStyles.labelLargeGray80002,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLockBlueGray300,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      orderlist1ItemModelObj.nameText!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCall,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      orderlist1ItemModelObj.phoneText!,
                      style: CustomTextStyles.labelLargeBlueA700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEdit,
                    height: 12.v,
                    width: 11.h,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      orderlist1ItemModelObj.noteText!,
                      style: CustomTextStyles.labelLargeBluegray400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.v),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Container(
                    width: 143.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineGray,
                    child: Text(
                      orderlist1ItemModelObj.callshipper!,
                      style: CustomTextStyles.labelLargeBluegray800,
                    ),
                  ),
                  Container(
                    width: 104.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineGray,
                    child: Text(
                      orderlist1ItemModelObj.editorder!,
                      style: CustomTextStyles.labelLargeBluegray800,
                    ),
                  ),
                  Container(
                    width: 104.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineGray,
                    child: Text(
                      orderlist1ItemModelObj.revoke!,
                      style: CustomTextStyles.labelLargeBluegray800,
                    ),
                  ),
                  Container(
                    width: 44.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineGray,
                    child: Text(
                      orderlist1ItemModelObj.fiftyThree!,
                      style: theme.textTheme.labelLarge,
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
