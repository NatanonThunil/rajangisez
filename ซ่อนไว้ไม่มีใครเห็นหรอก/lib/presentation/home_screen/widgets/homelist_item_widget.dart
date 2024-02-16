import 'package:flutter/material.dart';
import 'package:nathanon_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HomelistItemWidget extends StatelessWidget {
  const HomelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 184.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 41.h,
            margin: EdgeInsets.only(left: 3.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillRedA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Text(
              "Live",
              style: CustomTextStyles.bodySmallWhiteA700,
            ),
          ),
          SizedBox(height: 242.v),
          Text(
            "TEXT",
            style: CustomTextStyles.bodySmallWhiteA700,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
