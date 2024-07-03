import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:excuela_widget_master/user_card/widgets/personal_info_widgets/email_widget.dart';
import 'package:excuela_widget_master/user_card/widgets/personal_info_widgets/linkedin_widget.dart';
import 'package:excuela_widget_master/user_card/widgets/personal_info_widgets/map_widget.dart';
import 'package:excuela_widget_master/user_card/widgets/personal_info_widgets/phone_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserCardPersonalInfoWithLinks extends StatelessWidget {
  const UserCardPersonalInfoWithLinks(
      {super.key, required this.size, required this.state});

  final Size size;
  final UserCardState state;

  final TextStyle mainDataStyle = const TextStyle(
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: size.height * 0.15,
        width: size.width * 0.65,
        child: Column(children: [
          const Expanded(child: SizedBox()),
          UserCardPersonalInfoWidgetsLinkedinWidget(
              size: size, state: state, mainDataStyle: mainDataStyle),
          const Expanded(child: SizedBox()),
          UserCardPersonalInfoWidgetsEmailWidget(
              size: size, state: state, mainDataStyle: mainDataStyle),
          const Expanded(child: SizedBox()),
          UserCardPersonalInfoWidgetsPhoneWidget(
              state: state, size: size, mainDataStyle: mainDataStyle),
          const Expanded(child: SizedBox()),
          UserCardPersonalInfoWidgetsMapWidget(
              size: size, state: state, mainDataStyle: mainDataStyle),
          const Expanded(child: SizedBox()),
        ]),
      ),
    );
  }
}
