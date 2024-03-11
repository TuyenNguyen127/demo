import '../models/button1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';

// ignore: must_be_immutable
class Button1ItemWidget extends StatelessWidget {
  Button1ItemWidget(
    this.button1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Button1ItemModel button1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.h,
      child: Column(
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
            button1ItemModelObj.text!,
            style: CustomTextStyles.bodySmall11,
          ),
        ],
      ),
    );
  }
}
