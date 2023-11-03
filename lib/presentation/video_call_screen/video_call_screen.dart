import 'bloc/video_call_bloc.dart';
import 'models/video_call_model.dart';
import 'package:basri_s_application6/core/app_export.dart';
import 'package:basri_s_application6/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoCallBloc>(
        create: (context) =>
            VideoCallBloc(VideoCallState(videoCallModelObj: VideoCallModel()))
              ..add(VideoCallInitialEvent()),
        child: VideoCallScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<VideoCallBloc, VideoCallState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: appTheme.gray300,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.gray300,
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 1.01),
                          end: Alignment(0.5, 0.36),
                          colors: [
                            appTheme.indigoA200.withOpacity(0.5),
                            appTheme.indigoA200.withOpacity(0.5)
                          ]),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup37),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: 360.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 20.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 20.v),
                            _buildVideoCallRow(context),
                            SizedBox(height: 78.v),
                            Container(
                                margin: EdgeInsets.only(right: 265.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 9.h, vertical: 14.v),
                                decoration: AppDecoration.outlineGray40033
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 8.v),
                                      Container(
                                          height: 78.v,
                                          width: 12.h,
                                          margin: EdgeInsets.only(left: 7.h),
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                        height: 78.v,
                                                        child: VerticalDivider(
                                                            width: 2.h,
                                                            thickness: 2.v,
                                                            color: appTheme
                                                                .gray200))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 4.h),
                                                        child: SizedBox(
                                                            height: 39.v,
                                                            child: VerticalDivider(
                                                                width: 2.h,
                                                                thickness: 2.v,
                                                                color: appTheme
                                                                    .indigoA200,
                                                                endIndent:
                                                                    1.h)))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 27.v),
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .whiteA70001,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6.h),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                  color: appTheme
                                                                      .black900
                                                                      .withOpacity(
                                                                          0.25),
                                                                  spreadRadius:
                                                                      2.h,
                                                                  blurRadius:
                                                                      2.h,
                                                                  offset:
                                                                      Offset(
                                                                          0, 3))
                                                            ])))
                                              ])),
                                      SizedBox(height: 10.v),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVolumeDown,
                                          height: 26.adaptSize,
                                          width: 26.adaptSize,
                                          margin: EdgeInsets.only(left: 1.h))
                                    ])),
                            Spacer(),
                            Opacity(
                                opacity: 0.6,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_cardiovascular".tr,
                                        style: CustomTextStyles
                                            .titleSmallPoppinsWhiteA70001Medium))),
                            SizedBox(height: 5.v),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_dr_alan_hathaway".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 13.v),
                            Container(
                                margin: EdgeInsets.only(left: 10.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 11.h, vertical: 4.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          height: 9.adaptSize,
                                          width: 9.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 5.v, bottom: 6.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.pink500,
                                              borderRadius:
                                                  BorderRadius.circular(4.h))),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("lbl_6_48".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPoppinsWhiteA70001Medium_1))
                                    ]))
                          ]))),
              bottomNavigationBar: _buildNavBarRow(context)));
    });
  }

  /// Section Widget
  Widget _buildVideoCallRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 105.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle22,
              height: 145.v,
              width: 97.h,
              radius: BorderRadius.circular(20.h))
        ]);
  }

  /// Section Widget
  Widget _buildNavBarRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 26.h, right: 26.h, bottom: 35.v),
        decoration: AppDecoration.fillIndigoA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL50),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(top: 64.v),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.indigoA20001,
                                borderRadius: BorderRadius.circular(10.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgVideoWhiteA70001,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 8.v))
                  ])),
              Container(
                  height: 104.v,
                  width: 188.h,
                  margin: EdgeInsets.only(left: 20.h),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUnion,
                        height: 49.v,
                        width: 143.h,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 65.adaptSize,
                            width: 65.adaptSize,
                            margin: EdgeInsets.only(top: 11.v),
                            decoration: BoxDecoration(
                                color: theme.colorScheme.errorContainer,
                                borderRadius: BorderRadius.circular(32.h),
                                boxShadow: [
                                  BoxShadow(
                                      color: theme.colorScheme.errorContainer
                                          .withOpacity(0.2),
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(0, 10))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgCall,
                        height: 42.adaptSize,
                        width: 42.adaptSize,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 22.v)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.indigoA20001,
                                borderRadius: BorderRadius.circular(10.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgVoice,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 9.h, bottom: 9.v)),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.indigoA20001,
                                borderRadius: BorderRadius.circular(10.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgChat,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 9.h, bottom: 10.v))
                  ])),
              Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(left: 20.h, top: 64.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.indigoA20001,
                                borderRadius: BorderRadius.circular(10.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup1,
                        height: 18.v,
                        width: 4.h,
                        alignment: Alignment.center)
                  ]))
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
