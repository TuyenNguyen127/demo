import '../models/button_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';

// ignore: must_be_immutable
class ButtonItemWidget extends StatelessWidget {
  ButtonItemWidget(
    this.buttonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtonItemModel buttonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 46.adaptSize,
          width: 46.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(
              23.h,
            ),
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          buttonItemModelObj.text!,
          style: CustomTextStyles.bodySmall11,
        ),
      ],
    );
  }
}
