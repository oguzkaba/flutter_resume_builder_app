part of 'register_details_cubit.dart';

@freezed
class RegisterDetailsState with _$RegisterDetailsState {
  const factory RegisterDetailsState.initial() = _Initial;
  const factory RegisterDetailsState.loading() = _Loading;
  const factory RegisterDetailsState.changeAvatar() = _ChangeAvatar;
  const factory RegisterDetailsState.pickedImageFile(Uint8List byteImage) =
      _PickedImageFile;
  const factory RegisterDetailsState.successMessage(String message) =
      _SuccessMessage;
  const factory RegisterDetailsState.failure(String error) = _Failure;
}
