import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:flutter/material.dart';
class UserCardProfileImage extends StatelessWidget {
  const UserCardProfileImage({super.key, required this.size, required this.state});
  final Size size;
  final UserCardState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.height * 0.15,
      height: size.height * 0.15,
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10)),
          child: Image.network(state.imageUrl)),
    );
  }
}
