import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCardShowMoreInformationWidget extends StatelessWidget {
  const UserCardShowMoreInformationWidget(
      {super.key, required this.size, required this.state});

  final Size size;
  final UserCardState state;
  final TextStyle mainDataStyle = const TextStyle(
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.04,
      width: size.width * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Text(
              !state.isExpansionTileExpanded
                  ? 'Mostrar informacion adicional'
                  : 'Ocultar informacion adicional',
              style: mainDataStyle,
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
              onPressed: () {
                context.read<UserCardBloc>().add(
                    UserCardEvent.changeExpansionTileValue(
                        newValue: !state.isExpansionTileExpanded));
              },
              icon: !state.isExpansionTileExpanded
                  ? const Icon(CupertinoIcons.chevron_down)
                  : const Icon(CupertinoIcons.chevron_up)),
        ],
      ),
    );
  }
}
