part of 'loading_screen_bloc.dart';

enum LoadingAnimationType {
  inkDrop,
  fourRotatingDots,
  discreteCircular,
  threeArchedCircle,
  flickr,
  beat,
  twoRotatingArc
}

@freezed
class LoadingScreenState with _$LoadingScreenState {
  const factory LoadingScreenState({
    required LoadingAnimationType loadingAnimationType,
    required Color primaryColor,
    required Color secondaryColor,
  }) = _LoadingScreenState;

  factory LoadingScreenState.initial() => const LoadingScreenState(
        loadingAnimationType: LoadingAnimationType.inkDrop,
        primaryColor: Colors.yellow,
        secondaryColor: Colors.black,
      );
}
