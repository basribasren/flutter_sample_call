import 'bloc/dr_page_bloc.dart';
import 'models/dr_page_model.dart';
import 'package:basri_s_application6/core/app_export.dart';
import 'package:basri_s_application6/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:basri_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DrPageScreen extends StatelessWidget {
  const DrPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DrPageBloc>(
        create: (context) =>
            DrPageBloc(DrPageState(drPageModelObj: DrPageModel()))
              ..add(DrPageInitialEvent()),
        child: DrPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DrPageBloc, DrPageState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: 360.h,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 28.v),
                        _buildDoctorProfile(context),
                        SizedBox(height: 20.v),
                        SizedBox(
                            height: 475.v,
                            width: 360.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 25.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7.h, vertical: 1.v),
                                          decoration: AppDecoration.outlineGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 29.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 18.h),
                                                    child: Text(
                                                        "lbl_biography".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallPoppinsPrimaryContainer)),
                                                SizedBox(height: 9.v),
                                                Align(
                                                    alignment: Alignment
                                                        .centerRight,
                                                    child: SizedBox(
                                                        width: 278.h,
                                                        child: ReadMoreText(
                                                            "msg_dr_alan_hathaway2"
                                                                .tr,
                                                            trimLines: 3,
                                                            colorClickableText:
                                                                appTheme
                                                                    .indigoA200,
                                                            trimMode:
                                                                TrimMode.Line,
                                                            trimCollapsedText:
                                                                "lbl_read_more"
                                                                    .tr,
                                                            moreStyle: CustomTextStyles
                                                                .labelMediumBluegray200
                                                                .copyWith(
                                                                    height:
                                                                        1.82),
                                                            lessStyle: CustomTextStyles
                                                                .labelMediumBluegray200
                                                                .copyWith(
                                                                    height:
                                                                        1.82)))),
                                                SizedBox(height: 21.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 18.h),
                                                    child: Text(
                                                        "lbl_location".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallPoppinsPrimaryContainer)),
                                                SizedBox(height: 10.v),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        height: 126.v,
                                                        width: 260.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            children: [
                                                              Opacity(
                                                                  opacity: 0.8,
                                                                  child: Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Container(
                                                                          height: 71
                                                                              .v,
                                                                          width: 185
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.gray300A2,
                                                                              borderRadius: BorderRadius.circular(20.h))))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child: SizedBox(
                                                                      height: 117.v,
                                                                      width: 260.h,
                                                                      child: Stack(alignment: Alignment.topLeft, children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgRectangle36,
                                                                            height: 117.v,
                                                                            width: 260.h,
                                                                            radius: BorderRadius.circular(20.h),
                                                                            alignment: Alignment.center),
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgLocation,
                                                                            height: 24.adaptSize,
                                                                            width: 24.adaptSize,
                                                                            alignment: Alignment.topLeft,
                                                                            margin: EdgeInsets.only(left: 76.h, top: 31.v))
                                                                      ])))
                                                            ]))),
                                                SizedBox(height: 18.v),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    19.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                  "lbl_reviews2"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleSmallPoppinsPrimaryContainer),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 2
                                                                              .v),
                                                                  child: Text(
                                                                      "lbl_see_all"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .labelLargeIndigoA200))
                                                            ]))),
                                                SizedBox(height: 12.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 18.h),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              height: 46.v,
                                                              width: 48.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .secondaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.h))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 9.h,
                                                                      top: 2.v,
                                                                      bottom:
                                                                          23.v),
                                                              child: Text(
                                                                  "msg_alexsander_hudsop"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .labelLargeMedium))
                                                        ]))
                                              ]))),
                                  _buildNavBar(context)
                                ]))
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 65.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.symmetric(horizontal: 25.h, vertical: 8.v),
              color: appTheme.whiteA70001,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: appTheme.whiteA70001, width: 5.h),
                  borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: AppDecoration.outlineWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Stack(alignment: Alignment.topRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            margin: EdgeInsets.fromLTRB(12.h, 1.v, 3.h, 14.v),
                            decoration: BoxDecoration(
                                color: appTheme.indigoA200,
                                borderRadius: BorderRadius.circular(3.h))))
                  ])))
        ]);
  }

  /// Section Widget
  Widget _buildDoctorProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 47.h),
        child: Row(children: [
          SizedBox(
              height: 169.v,
              width: 113.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 57.v,
                        width: 73.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray600,
                            borderRadius: BorderRadius.circular(20.h)))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle32159x113,
                    height: 159.v,
                    width: 113.h,
                    radius: BorderRadius.circular(20.h),
                    alignment: Alignment.topCenter)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 23.h, top: 10.v, bottom: 10.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_dr_alan_hathaway".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 1.v),
                    Text("lbl_cardiovascular".tr,
                        style: CustomTextStyles.labelLargeBluegray200),
                    SizedBox(height: 17.v),
                    Row(children: [
                      Column(children: [
                        CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            decoration: IconButtonStyleHelper.outlineWhiteA,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgStar)),
                        SizedBox(height: 8.v),
                        CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            decoration: IconButtonStyleHelper.outlineWhiteA,
                            child: CustomImageView(
                                imagePath: ImageConstant.img3User))
                      ]),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, top: 4.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_rating".tr,
                                    style: CustomTextStyles
                                        .labelMediumBluegray200),
                                Text("lbl_4_8_out_of_5".tr,
                                    style: theme.textTheme.labelLarge),
                                SizedBox(height: 11.v),
                                Text("lbl_patient".tr,
                                    style: CustomTextStyles
                                        .labelMediumBluegray200),
                                SizedBox(height: 1.v),
                                Text("lbl_2000".tr,
                                    style: theme.textTheme.labelLarge)
                              ]))
                    ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNavBar(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 111.v,
            width: 360.h,
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 24.v),
            decoration: AppDecoration.outlineOnPrimary,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle23,
                  height: 20.v,
                  width: 252.h,
                  radius: BorderRadius.circular(10.h),
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 10.v)),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 1.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 27.h, vertical: 20.v),
                      decoration: AppDecoration.fillIndigoA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("msg_make_appointment".tr,
                                style: CustomTextStyles
                                    .titleSmallPoppinsWhiteA70001),
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(left: 42.h))
                          ])))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
