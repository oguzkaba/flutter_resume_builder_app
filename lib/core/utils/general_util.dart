import 'package:cached_network_image/cached_network_image.dart';
import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/extensions/color_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';

class GeneralUtil {
  /// This method returns the badge color based on the user's account type.
  static Color get badgeColor {
    return getIt<AuthBloc>().state.maybeWhen(
          success: (user) {
            final accEnum = AccountTypeEnum.fromString(user.accType);
            switch (accEnum) {
              case AccountTypeEnum.free:
                return ColorConstants.myLightGrey;
              case AccountTypeEnum.basic:
                return ColorConstants.primaryColor;
              case AccountTypeEnum.professional:
                return ColorConstants.myYellow;
              case AccountTypeEnum.admin:
                return ColorConstants.myDarkRed;
            }
          },
          orElse: () => ColorConstants.myWhite,
        );
  }

  static Future<void> removeCache(
    String? photoUrl,
  ) async {
    if (photoUrl == null) {
      return;
    }
    await CachedNetworkImageProvider.defaultCacheManager.emptyCache();
  }

  static ImageProvider<Object>? profileImage(
    String? photoUrl,
  ) {
    if (photoUrl == null) {
      return AssetImage('avatar'.toPNG);
    }

    return CachedNetworkImageProvider(
      photoUrl,
      cacheKey: photoUrl,
      cacheManager: CachedNetworkImageProvider.defaultCacheManager,
    );
  }

  static WidgetStateProperty<Color> resumePowerRateColor(int rate) {
    if (rate >= 50 && rate < 70) {
      return ColorConstants.myOrangeMaterialState;
    } else if (rate >= 70 && rate < 85) {
      return ColorConstants.myYellowMaterialState;
    } else if (rate >= 85 && rate < 100) {
      return ColorConstants.myGreenMaterialState;
    } else {
      return ColorConstants.myRedMaterialState;
    }
  }

  static Color providerColor(String? providerName) {
    switch (providerName) {
      case 'email':
        return ColorConstants.primaryColor;
      case 'google':
        return 'B23121'.toColor;
      case 'apple':
        return ColorConstants.myBlack;
      case 'github':
        return '24292E'.toColor;
      case 'linkedin':
        return '0077B5'.toColor;
      default:
        return ColorConstants.myBlack;
    }
  }

  static String phoneFormatted(String phone) {
    return phone.length == 10
        ? '(${phone.substring(0, 3)}) ${phone.substring(3, 6)} ${phone.substring(6, 10)}'
        : phone;
  }
}

// TO-DO: Get size and position of the widget.[initState] called before the widget is rendered.
// final GlobalKey testKey2 = GlobalKey();
// Size size = Size.zero;
// Offset offset = Offset.zero;
// void getSize() {
//   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//     getSizeAndPosition();
//   });
// }

// void getSizeAndPosition() {
//   final logoBox = testKey2.currentContext!.findRenderObject()! as RenderBox;
//   size = logoBox.size;
//   offset = logoBox.localToGlobal(Offset.zero);
//   setState(() {});
//   log('size: $size');
// }
