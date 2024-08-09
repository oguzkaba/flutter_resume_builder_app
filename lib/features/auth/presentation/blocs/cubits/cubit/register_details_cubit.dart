import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/network/connectivity_info.dart';
import 'package:fixresume/core/modules/env_module.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/user_details/user_details_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'register_details_state.dart';
part 'register_details_cubit.freezed.dart';

@lazySingleton
class RegisterDetailsCubit extends Cubit<RegisterDetailsState> {
  RegisterDetailsCubit({
    required this.supabaseClient,
    required this.connectivityInfo,
  }) : super(const RegisterDetailsState.initial());
  final ConnectivityInfo connectivityInfo;
  final SupabaseClient supabaseClient;

  final String _supabaseBucketUrl = EnvironmentModule.supabaseBucketUrl;

  Future<void> changeAvatarUpload(
    Uint8List binaryData,
  ) async {
    emit(const RegisterDetailsState.loading());
    late final UserDetailsEntity userDetailsEntity;
    getIt<AuthBloc>().state.whenOrNull(
          success: (user) => userDetailsEntity = user,
        );

    try {
      if (!await connectivityInfo.isConnected) {
        emit(const RegisterDetailsState.failure('No internet connection!'));
      } else {
        final response =
            await supabaseClient.storage.from('avatars').uploadBinary(
                  '${userDetailsEntity.userId}/avatar.jpg',
                  binaryData,
                  fileOptions: const FileOptions(upsert: true),
                );
        getIt<UserDetailsBloc>().add(
          UserDetailsEvent.updateUserDetails(
            userDetailsEntity: userDetailsEntity.copyWith(
              photoUrl: '$_supabaseBucketUrl$response',
              updatedAt: DateTime.now(),
            ),
          ),
        );

        if (response.isEmpty) {
          emit(const RegisterDetailsState.failure('Failed to upload avatar!'));
        } else {
          emit(
            const RegisterDetailsState.successMessage(
              'Profile picture has been successfully changed.',
            ),
          );
          emit(const RegisterDetailsState.changeAvatar());
        }
      }
    } on ServerException catch (e) {
      return emit(RegisterDetailsState.failure(e.message));
    } catch (e) {
      return emit(RegisterDetailsState.failure(e.toString()));
    }
  }

  Future<void> pickImageFile() async {
    final picker = ImagePicker();
    try {
      final image = await picker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        emit(const RegisterDetailsState.failure('No image selected!'));
        return;
      }
      final imageBytes = await image.readAsBytes();
      emit(RegisterDetailsState.pickedImageFile(imageBytes));
      // await picker.pickImage(source: ImageSource.gallery).then((image) async {
      //   if (image == null) {
      //     emit(const RegisterDetailsState.failure('No image selected!'));
      //     return;
      //   }
      //   final imageBytes = await image.readAsBytes();
      //   emit(RegisterDetailsState.pickedImageFile(imageBytes));
      // });
    } catch (e) {
      emit(RegisterDetailsState.failure(e.toString()));
    }
  }
}
