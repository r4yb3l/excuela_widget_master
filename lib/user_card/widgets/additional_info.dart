import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:flutter/material.dart';

class UserCardAdditionalInfo extends StatelessWidget {
  const UserCardAdditionalInfo({super.key, required this.state, required this.size});

  final TextStyle mainDataStyle = const TextStyle(
    fontSize: 12,
  );

  final UserCardState state;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: state.isContainerExpanded,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        opacity: state.isExpansionTileExpanded ? 1.0 : 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.78,
              child: Wrap(
                children: [
                  Text(
                    state.additionalData,
                    style: mainDataStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
