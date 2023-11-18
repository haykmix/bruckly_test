import '../models/bookingcancelled_item_model.dart';
import 'package:brukcly_test/core/app_export.dart';
import 'package:brukcly_test/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookingcancelledItemWidget extends StatelessWidget {
  BookingcancelledItemWidget(
    this.bookingcancelledItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookingcancelledItemModel bookingcancelledItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 43.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: bookingcancelledItemModelObj?.palmsCasinoResort,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookingcancelledItemModelObj.palmsCasinoResort1!,
                        style: CustomTextStyles.titleLarge20,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        bookingcancelledItemModelObj.londonUnitedKingdom!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                        height: 24.v,
                        width: 60.h,
                        text: "lbl_paid".tr,
                        buttonStyle: CustomButtonStyles.fillRed,
                        buttonTextStyle: CustomTextStyles.labelMediumRed400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 5.v,
                  ),
                  child: Text(
                    bookingcancelledItemModelObj.youCanceledThis!,
                    style: CustomTextStyles.labelMediumRed400_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
