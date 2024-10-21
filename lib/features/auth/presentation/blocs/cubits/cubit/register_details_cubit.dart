import 'package:fixresume/core/errors/exceptions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/network/connectivity_info.dart';
import 'package:fixresume/core/modules/env_module.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/user_details/user_details_bloc.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_info_entity.dart';
import 'package:fixresume/features/resume/presentation/blocs/personal_info/personal_info_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    getIt<AuthBloc>()
        .state
        .whenOrNull(success: (user) => userDetailsEntity = user);

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

        if (response.isEmpty) {
          emit(const RegisterDetailsState.failure('Failed to upload avatar!'));
        } else {
          getIt<UserDetailsBloc>().add(
            UserDetailsEvent.updateUserDetails(
              userDetailsEntity: userDetailsEntity.copyWith(
                photoUrl: '$_supabaseBucketUrl$response',
                updatedAt: DateTime.now(),
              ),
            ),
          );
          Future.delayed(const Duration(seconds: 1), () async {
            await GeneralUtil.removeCache(userDetailsEntity.photoUrl);
            imageCache
              ..clear()
              ..clearLiveImages();
            getIt<AuthBloc>().add(const AuthEvent.loggedIn());
          });

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
    } catch (e) {
      emit(RegisterDetailsState.failure(e.toString()));
    }
  }

  Future<void> saveUserDetailsPerInfo({
    required String name,
    required String surname,
    required String email,
    required String phoneCountryCode,
    required String phone,
  }) async {
    emit(const RegisterDetailsState.loading());
    late final UserDetailsEntity userDetailsEntity;
    getIt<AuthBloc>()
        .state
        .whenOrNull(success: (user) => userDetailsEntity = user);

    try {
      if (!await connectivityInfo.isConnected) {
        emit(const RegisterDetailsState.failure('No internet connection!'));
      } else {
        await _addOrUpdatePerInfoMethod(
          userDetailsEntity,
          name,
          surname,
          email,
          phoneCountryCode,
          phone,
        );

        getIt<UserDetailsBloc>().add(
          UserDetailsEvent.updateUserDetails(
            userDetailsEntity: userDetailsEntity.copyWith(
              fullName: '$name $surname',
              updatedAt: DateTime.now(),
            ),
          ),
        );
        emit(const RegisterDetailsState.successMessage('Profile updated!'));
      }
    } on ServerException catch (e) {
      return emit(RegisterDetailsState.failure(e.message));
    } catch (e) {
      return emit(RegisterDetailsState.failure(e.toString()));
    }
  }

  Future<void> _addOrUpdatePerInfoMethod(
    UserDetailsEntity userDetailsEntity,
    String name,
    String surname,
    String email,
    String phoneCountryCode,
    String phone,
  ) async {
    final personalInfoEntity = getIt<PersonalInfoBloc>().state.whenOrNull(
          personalInfoSuccess: (personalInfo) => personalInfo,
        );

    if (personalInfoEntity == null) {
      getIt<PersonalInfoBloc>().add(
        PersonalInfoEvent.addPersonalInfo(
          PersonalInfoEntity(
            userId: userDetailsEntity.userId,
            name: name,
            surname: surname,
            email: email,
            phoneCountryCode: phoneCountryCode,
            phone: phone,
            createdAt: DateTime.now(),
          ),
        ),
      );
    } else {
      getIt<PersonalInfoBloc>().add(
        PersonalInfoEvent.updatePersonalInfo(
          personalInfoEntity.copyWith(
            name: name,
            surname: surname,
            email: email,
            phoneCountryCode: phoneCountryCode,
            phone: phone,
            updatedAt: DateTime.now(),
          ),
        ),
      );
    }
  }

  void clearState() {
    emit(const RegisterDetailsState.initial());
  }
}
