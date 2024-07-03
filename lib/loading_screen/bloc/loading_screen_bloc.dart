import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_screen_event.dart';

part 'loading_screen_state.dart';

part 'loading_screen_bloc.freezed.dart';

class LoadingScreenBloc extends Bloc<LoadingScreenEvent, LoadingScreenState> {
  LoadingScreenBloc() : super(LoadingScreenState.initial()) {
    on<LoadingScreenEvent>((event, emit) async {
      event.when(
          newAnimationSelected: (LoadingAnimationType newAnimationType) {
        emit(state.copyWith(loadingAnimationType: newAnimationType));
      }, newPrimaryColorSelected: (Color newColor) {
        emit(state.copyWith(primaryColor: newColor));
      }, newSecondaryColorSelected: (Color newColor) {
        emit(state.copyWith(secondaryColor: newColor));
      });
    });
  }
}
