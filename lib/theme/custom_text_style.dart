import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBluegray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeDMSansBluegray900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeIndigoA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIndigoA200_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA200,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA70001Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBluegray200 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 11.fSize,
      );
  static get labelMediumGray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get labelMediumGray60001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60001.withOpacity(0.56),
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 11.fSize,
      );
  // Title text style
  static get titleLargeDMSansBluegray800 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.blueGray800,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansBluegray800 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlueA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA400,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsWhiteA70001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsWhiteA70001Medium =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.56),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsWhiteA70001Medium_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }
}
