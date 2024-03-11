import '../models/collection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:app_demo/core/app_export.dart';

// ignore: must_be_immutable
class CollectionItemWidget extends StatelessWidget {
  CollectionItemWidget(
    this.collectionItemModelObj, {
    Key? key,
    this.onTapCollection,
  }) : super(
          key: key,
        );

  CollectionItemModel collectionItemModelObj;

  VoidCallback? onTapCollection;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCollection!.call();
      },
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.fillDeepOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.redA200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder23,
              ),
              child: Container(
                height: 46.adaptSize,
                width: 46.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillRedA.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder23,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: collectionItemModelObj?.requestImage1,
                      height: 27.v,
                      width: 25.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: collectionItemModelObj?.requestImage2,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 1.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 60.h,
              margin: EdgeInsets.only(
                left: 15.h,
                top: 3.v,
              ),
              child: Text(
                collectionItemModelObj.requestText!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumGray80001_1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
