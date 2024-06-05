import 'package:cached_network_image/cached_network_image.dart';
import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
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

  static ImageProvider<Object>? profileImage(UserDetailsEntity user) {
    if (user.photoUrl == null &&
        user.currentUser.userMetadata?['avatar_url'] == null) {
      return AssetImage('avatar'.toPNG) as ImageProvider<Object>?;
    } else {
      return CachedNetworkImageProvider(
        user.currentUser.userMetadata!['avatar_url'].toString(),
      );
    }
  }
}
