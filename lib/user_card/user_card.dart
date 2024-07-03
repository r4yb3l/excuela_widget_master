import 'package:excuela_widget_master/user_card/widgets/additional_info.dart';
import 'package:excuela_widget_master/user_card/widgets/personal_info_with_links.dart';
import 'package:excuela_widget_master/user_card/widgets/profile_image.dart';
import 'package:excuela_widget_master/user_card/widgets/show_more_information_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/user_card_bloc.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  final TextStyle mainDataStyle = const TextStyle(
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Card'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Press icons to navigate', style: mainDataStyle, textAlign: TextAlign.center,),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<UserCardBloc, UserCardState>(
                builder: (context, state) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: !state.isExpansionTileExpanded
                        ? size.height * 0.195
                        : size.height * 0.28,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            UserCardProfileImage(size: size, state: state),
                            UserCardPersonalInfoWithLinks(
                              size: size,
                              state: state,
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: size.width * 0.85,
                          color: Colors.grey,
                        ),
                        UserCardShowMoreInformationWidget(
                            size: size, state: state),
                        UserCardAdditionalInfo(state: state, size: size)
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
