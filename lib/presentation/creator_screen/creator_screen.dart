import 'bloc/creator_bloc.dart';
import 'models/creator_model.dart';
import 'package:basri_s_application6/core/app_export.dart';
import 'package:basri_s_application6/widgets/custom_checkbox_button.dart';
import 'package:basri_s_application6/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class CreatorScreen extends StatelessWidget {
  const CreatorScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CreatorBloc>(
      create: (context) => CreatorBloc(CreatorState(
        creatorModelObj: CreatorModel(),
      ))
        ..add(CreatorInitialEvent()),
      child: CreatorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        body: Container(
          width: 498.h,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 40.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "lbl_introducing".tr.toUpperCase(),
                  style: CustomTextStyles.labelLargeDMSansBluegray900,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "msg_online_medical_app".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: 367.h,
                margin: EdgeInsets.only(
                  left: 18.h,
                  right: 67.h,
                ),
                child: Text(
                  "msg_carefully_designed".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumDMSansBluegray800.copyWith(
                    height: 1.75,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 20.h,
                  endIndent: 20.h,
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 85.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      radius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 24.h,
                          bottom: 3.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_alan".tr,
                              style:
                                  CustomTextStyles.titleLargeDMSansBluegray800,
                            ),
                            SizedBox(height: 6.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_feel_free_to".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "msg_knock_me_for_freelance".tr,
                                    style: CustomTextStyles.titleSmallBlueA400
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 38.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgDribbble,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "msg_dribbble_com_alanliu".tr,
                        style: theme.textTheme.titleSmall!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgBehance,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "msg_behance_net_alanlove".tr,
                        style: theme.textTheme.titleSmall!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              _buildLinksRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLinksRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocSelector<CreatorBloc, CreatorState, bool?>(
            selector: (state) => state.twitterUrl,
            builder: (context, twitterUrl) {
              return CustomCheckboxButton(
                text: "msg_twitter_com_alanlovelq".tr,
                value: twitterUrl,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  context
                      .read<CreatorBloc>()
                      .add(ChangeCheckBoxEvent(value: value));
                },
              );
            },
          ),
          BlocSelector<CreatorBloc, CreatorState, String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return CustomRadioButton(
                text: "msg_instagram_com_ux_alanlove".tr,
                value: "msg_instagram_com_ux_alanlove".tr ?? "",
                groupValue: radioGroup,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  context
                      .read<CreatorBloc>()
                      .add(ChangeRadioButtonEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
