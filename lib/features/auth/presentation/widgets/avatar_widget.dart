import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/cubits/cubit/register_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({
    required this.radius,
    super.key,
    this.isEdit = true,
  });
  final bool isEdit;
  final double radius;

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorConstants.primaryColor.withOpacity(.2),
                ColorConstants.primaryColor,
                ColorConstants.primaryColor.withOpacity(.2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.circle,
          ),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return CircleAvatar(
                radius: widget.radius,
                backgroundColor: ColorConstants.myWhite,
                backgroundImage: state.maybeWhen(
                  success: (user) {
                    final photoUrl = user.photoUrl;
                    return GeneralUtil.profileImage(photoUrl);
                  },
                  orElse: () => null,
                ),
              );
            },
          ),
        ),
        if (widget.isEdit)
          IconButton.filledTonal(
            onPressed: () {
              getIt<RegisterDetailsCubit>().pickImageFile().whenComplete(
                    () => getIt<RegisterDetailsCubit>().state.whenOrNull(
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          pickedImageFile: (byteImage) => context
                              .pushNamed(RoutesEnum.cropImageScreen.name),
                        ),
                  );
            },
            tooltip: 'Resim Seç',
            color: ColorConstants.primaryColor,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(ColorConstants.myWhite),
              shape: WidgetStateProperty.all(
                CircleBorder(
                  side: BorderSide(color: ColorConstants.myLightGrey),
                ),
              ),
            ),
            icon: FontAwesomeIcons.cameraRotate.toFaIconDefaultColor,
          ),
      ],
    );
  }
}
