import 'package:bloc/bloc.dart';
import 'package:excuela_widget_master/user_card/user_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_card_event.dart';

part 'user_card_state.dart';

part 'user_card_bloc.freezed.dart';

class UserCardBloc extends Bloc<UserCardEvent, UserCardState> {
  UserCardBloc() : super(UserCardState.initial()) {
    on<UserCardEvent>((event, emit) async {
      await event.when(changeExpansionTileValue: (bool newValue) async {
        emit(state.copyWith(isExpansionTileExpanded: newValue));
        if (newValue) {
          await Future.delayed(const Duration(milliseconds: 300));
          emit(state.copyWith(isContainerExpanded: newValue));
        } else {
          emit(state.copyWith(isContainerExpanded: newValue));
        }
      }, changeLikeValue: (bool newValue) {
        emit(state.copyWith(isLiked: newValue));
      });
    });
  }
}
