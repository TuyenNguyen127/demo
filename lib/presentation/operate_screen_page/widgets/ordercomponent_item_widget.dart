import '../models/ordercomponent_item_model.dart';
import 'package:app_demo/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';

// ignore: must_be_immutable
class OrdercomponentItemWidget extends StatelessWidget {
  OrdercomponentItemWidget(
    this.ordercomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrdercomponentItemModel ordercomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.fromLTRB(14.h, 6.v, 14.h, 7.v),
        decoration: AppDecoration.outlineBluegray300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 245.h,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            ordercomponentItemModelObj.id!,
                            style: CustomTextStyles.labelLargeBluegray300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            ordercomponentItemModelObj.widget!,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgComputer,
                          height: 13.v,
                          width: 11.h,
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Container(
                          width: 66.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillBlue100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Text(
                            ordercomponentItemModelObj.statusText!,
                            style: CustomTextStyles.labelMediumBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    width: 42.h,
                    text: "lbl_get".tr,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                right: 85.h,
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
                      ordercomponentItemModelObj.itemText!,
                      style: CustomTextStyles.labelLargeGray80002,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 9.v,
                    width: 11.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      ordercomponentItemModelObj.serviceText!,
                      style: CustomTextStyles.labelLargeLightblue800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlueGray300,
                    height: 12.v,
                    width: 11.h,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      ordercomponentItemModelObj.weightText!,
                      style: CustomTextStyles.labelLargeOrangeA700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionBlueGray300,
                    height: 9.v,
                    width: 12.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      ordercomponentItemModelObj.priceText!,
                      style: CustomTextStyles.labelLargeGreen80001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      ordercomponentItemModelObj.startDateText!,
                      style: CustomTextStyles.labelLargeBluegray300,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_total".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        TextSpan(
                          text: "lbl_200000".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
