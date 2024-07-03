part of 'user_card_bloc.dart';

@freezed
class UserCardState with _$UserCardState {
 const factory UserCardState({
   required bool isExpansionTileExpanded,
   required bool isContainerExpanded,
   required String name,
   required String email,
   required String imageUrl,
   required String phoneNumber,
   required String location,
   required String additionalData,
}) = _UserCardState;

 factory UserCardState.initial() => UserCardState(
   name: 'Raybel Hernandez',
   email: 'raybel.developer@gmail.com',
   phoneNumber: '+505 88390152',
   location: 'Esteli, Nicaragua',
   imageUrl: 'https://media.licdn.com/dms/image/D4E03AQGUbMxtgVW1pQ/profile-displayphoto-shrink_800_800/0/1697204618915?e=1725494400&v=beta&t=Ys-2pGJ61WJ1aNk70nnigFBARo0tHacRHcNp_qCr_zI',
   isExpansionTileExpanded: false,
   isContainerExpanded: false,
   additionalData: 'Software developer trained in computer science with a strong affinity for mobile development, especially with the Flutter framework. Always trying to discover new things'
 );


}
