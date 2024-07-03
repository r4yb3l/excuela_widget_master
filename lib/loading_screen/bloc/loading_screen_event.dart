part of 'loading_screen_bloc.dart';

@freezed
class LoadingScreenEvent with _$LoadingScreenEvent {
  const factory LoadingScreenEvent.newAnimationSelected({required LoadingAnimationType newAnimationType}) = _NewAnimationSelected;
  const factory LoadingScreenEvent.newPrimaryColorSelected({required Color newColor}) = _NewPrimaryColorSelected;
  const factory LoadingScreenEvent.newSecondaryColorSelected({required Color newColor}) = _NewSecondaryColorSelected;
}
