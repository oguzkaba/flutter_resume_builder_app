import 'dart:developer';

import 'package:cropperx/cropperx.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:fixresume/core/widgets/custom_filledbutton_widget.dart';
import 'package:fixresume/core/widgets/custom_snackbar_widget.dart';
import 'package:fixresume/features/auth/presentation/blocs/cubits/cubit/register_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CropperImageScreen extends StatefulWidget {
  const CropperImageScreen({super.key});

  @override
  State<CropperImageScreen> createState() => _CropperImageScreenState();
}

class _CropperImageScreenState extends State<CropperImageScreen> {
  final GlobalKey _cropperKey = GlobalKey(debugLabel: 'cropperKey');
  int _rotationTurns = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDialogAppBarWidget(title: 'Crop Image'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
              child: BlocConsumer<RegisterDetailsCubit, RegisterDetailsState>(
                listener: (context, state) {
                  state.whenOrNull(
                    failure: (error) {
                      CustomSnackbarWidget.showError(context, error);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    loading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    pickedImageFile: (image) {
                      return Cropper(
                        cropperKey: _cropperKey,
                        overlayType: OverlayType.circle,
                        rotationTurns: _rotationTurns,
                        image: Image.memory(image),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              children: [
                CustomFilledButtonWidget(
                  buttonText: 'Crop Image',
                  width: 200,
                  onPressed: _cropImageMethod,
                ),
                IconButton(
                  onPressed: () {
                    setState(() => _rotationTurns--);
                  },
                  icon: const Icon(Icons.rotate_left),
                ),
                IconButton(
                  onPressed: () {
                    setState(() => _rotationTurns++);
                  },
                  icon: const Icon(Icons.rotate_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _cropImageMethod() async {
    final croppedImage = await Cropper.crop(
      cropperKey: _cropperKey,
    );
    if (croppedImage != null) {
      log('Cropped image size: ${croppedImage.length}');
      await getIt<RegisterDetailsCubit>().changeAvatarUpload(croppedImage);
      if (mounted) {
        context.pop(context);
      }
    }
  }
}
