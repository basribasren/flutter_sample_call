import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:basri_s_application6/core/app_export.dart';
import 'package:basri_s_application6/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application6/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:basri_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application6/widgets/app_bar/appbar_title_image.dart';
import 'package:basri_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application6/widgets/custom_elevated_button.dart';
import 'package:basri_s_application6/widgets/custom_icon_button.dart';
import 'package:basri_s_application6/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 360.h,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child:
                    BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_a_doctor".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 31.v),
              _buildUpcomingScheduleRow(context),
              SizedBox(height: 18.v),
              _buildScheduleStack(context),
              SizedBox(height: 33.v),
              _buildFindDoctorRow(context),
              SizedBox(height: 22.v),
              _buildSpecialtiesRow(context),
              SizedBox(height: 15.v),
              _buildDoctorInfoRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 65.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgSettings,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(
            text: "msg_current_location".tr,
            margin: EdgeInsets.only(left: 1.h),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgLocationIndigoA200,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
                AppbarTitle(
                  text: "lbl_los_angeles".tr,
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 8.v,
          ),
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.outlineWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgRectangle33,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUpcomingScheduleRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_upcoming_schedule".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.labelLargeIndigoA200_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScheduleStack(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: 310.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 172.v,
                width: 250.h,
                decoration: BoxDecoration(
                  color: appTheme.indigoA200.withOpacity(0.42),
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 172.v,
                width: 280.h,
                decoration: BoxDecoration(
                  color: appTheme.indigoA200.withOpacity(0.49),
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.fillIndigoA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle25,
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          radius: BorderRadius.circular(
                            12.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 2.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_dr_alan_hathaway".tr,
                                style: CustomTextStyles
                                    .titleSmallPoppinsWhiteA70001,
                              ),
                              Opacity(
                                opacity: 0.6,
                                child: Text(
                                  "lbl_cardiovascular".tr,
                                  style: CustomTextStyles
                                      .labelLargeWhiteA70001Medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          child: CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillWhiteA,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgVideo,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  CustomElevatedButton(
                    text: "msg_sun_jan_15_09_00am".tr,
                    margin: EdgeInsets.only(left: 2.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 11.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFindDoctorRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "msg_lets_find_your_doctor".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFilter,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialtiesRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 25.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 136.h,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage258,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text(
                        "lbl_heart_surgeon".tr,
                        style: CustomTextStyles.labelMediumPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 130.h,
                margin: EdgeInsets.only(left: 15.h),
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.outlineGray10001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage866,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_psychologist".tr,
                        style: CustomTextStyles.labelMediumPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 42.v,
                width: 130.h,
                margin: EdgeInsets.only(left: 15.h),
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.outlineGray10001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  alignment: Alignment.centerLeft,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorInfoRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle32,
            height: 65.adaptSize,
            width: 65.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 1.v,
              right: 21.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_dr_alan_hathaway".tr,
                  style: CustomTextStyles
                      .titleSmallPoppinsPrimaryContainerSemiBold,
                ),
                Opacity(
                  opacity: 0.6,
                  child: Text(
                    "lbl_cardiovascular".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStars,
                      height: 20.v,
                      width: 76.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_4".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "lbl_8".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl".tr,
                              style: CustomTextStyles.labelMediumGray400,
                            ),
                            TextSpan(
                              text: "lbl_1".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "lbl_77".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            TextSpan(
                              text: "lbl_reviews".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
