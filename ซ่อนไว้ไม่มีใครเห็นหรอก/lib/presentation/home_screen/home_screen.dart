import '../home_screen/widgets/homelist_item_widget.dart';
import '../home_screen/widgets/userprofilegrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nathanon_s_application1/core/app_export.dart';
import 'package:nathanon_s_application1/widgets/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController bannerhereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildBannerView(context),
                SizedBox(height: 21.v),
                _buildCategoryRow(context),
                SizedBox(height: 14.v),
                _buildHomeList(context),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Text(
                      "For You",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                _buildUserProfileGrid(context),
                SizedBox(height: 89.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBannerView(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.fillDeepOrange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 31.v,
            width: 299.h,
            margin: EdgeInsets.only(left: 8.h),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: CustomTextFormField(
              controller: bannerhereController,
              hintText: "Banner here",
              textInputAction: TextInputAction.done,
              maxLines: 13,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoryRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 64.v,
                width: 65.h,
                decoration: BoxDecoration(
                  color: appTheme.redA100,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "Category",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 64.v,
                    width: 65.h,
                    decoration: BoxDecoration(
                      color: appTheme.redA100,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Pet supplies",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                Container(
                  height: 64.v,
                  width: 65.h,
                  decoration: BoxDecoration(
                    color: appTheme.redA100,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Text(
                      "Trends",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 64.v,
                  width: 65.h,
                  decoration: BoxDecoration(
                    color: appTheme.redA100,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "Shop Coin",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeList(BuildContext context) {
    return SizedBox(
      height: 298.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 30.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return HomelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 194.v,
          crossAxisCount: 2,
          mainAxisSpacing: 19.h,
          crossAxisSpacing: 19.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofilegridItemWidget();
        },
      ),
    );
  }
}
