part of 'user_card_bloc.dart';

@freezed
class UserCardEvent with _$UserCardEvent {
  const factory UserCardEvent.changeExpansionTileValue({required bool newValue}) = _ChangeExpansionTileValue;
}
