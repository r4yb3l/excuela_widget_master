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
                            SizedBox(
                              width: size.height * 0.15,
                              height: size.height * 0.15,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10)),
                                  child: Image.network(state.imageUrl)),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: SizedBox(
                                  height: size.height * 0.15,
                                  width: size.width * 0.65,
                                  child: Column(children: [
                                    const Expanded(child: SizedBox()),
                                    Row(
                                      children: [
                                        const Icon(Icons.person,
                                            color: Colors.grey),
                                        SizedBox(
                                          width: size.width * 0.009,
                                        ),
                                        Text(
                                          state.name,
                                          style: mainDataStyle,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                    const Expanded(child: SizedBox()),
                                    Row(
                                      children: [
                                        const Icon(Icons.alternate_email,
                                            color: Colors.grey),
                                        SizedBox(
                                          width: size.width * 0.009,
                                        ),
                                        Text(
                                          state.email,
                                          style: mainDataStyle,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                    const Expanded(child: SizedBox()),
                                    Row(
                                      children: [
                                        const Icon(Icons.phone,
                                            color: Colors.grey),
                                        SizedBox(
                                          width: size.width * 0.009,
                                        ),
                                        Text(
                                          state.phoneNumber,
                                          style: mainDataStyle,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                    const Expanded(child: SizedBox()),
                                    Row(
                                      children: [
                                        const Icon(Icons.location_on,
                                            color: Colors.grey),
                                        SizedBox(
                                          width: size.width * 0.009,
                                        ),
                                        Text(
                                          state.location,
                                          style: mainDataStyle,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                    const Expanded(child: SizedBox()),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: size.width * 0.85,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                          width: size.width * 0.8,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                    !state.isExpansionTileExpanded ?
                                    'Mostrar informacion adicional': 'Ocultar informacion adicional',
                                    style: mainDataStyle, textAlign: TextAlign.center,),
                              ),
                              IconButton(
                                  onPressed: () {
                                    context.read<UserCardBloc>().add(
                                        UserCardEvent.changeExpansionTileValue(
                                            newValue: !state
                                                .isExpansionTileExpanded));
                                  },
                                  icon: !state.isExpansionTileExpanded
                                      ? const Icon(CupertinoIcons.chevron_down)
                                      : const Icon(CupertinoIcons.chevron_up)),
                            ],
                          ),
                        ),
                        Visibility(
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
                        ),
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
