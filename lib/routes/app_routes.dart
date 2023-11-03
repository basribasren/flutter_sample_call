import 'package:flutter/material.dart';
import 'package:basri_s_application6/presentation/creator_screen/creator_screen.dart';
import 'package:basri_s_application6/presentation/home_container_screen/home_container_screen.dart';
import 'package:basri_s_application6/presentation/dr_page_screen/dr_page_screen.dart';
import 'package:basri_s_application6/presentation/video_call_screen/video_call_screen.dart';
import 'package:basri_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String creatorScreen = '/creator_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String drPageScreen = '/dr_page_screen';

  static const String videoCallScreen = '/video_call_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        creatorScreen: CreatorScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        drPageScreen: DrPageScreen.builder,
        videoCallScreen: VideoCallScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeContainerScreen.builder
      };
}
