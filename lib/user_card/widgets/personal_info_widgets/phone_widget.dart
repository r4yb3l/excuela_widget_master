import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserCardPersonalInfoWidgetsPhoneWidget extends StatelessWidget {
  const UserCardPersonalInfoWidgetsPhoneWidget(
      {super.key,
      required this.state,
      required this.size,
      required this.mainDataStyle});

  final UserCardState state;
  final Size size;
  final TextStyle mainDataStyle;

  void _callNumber() async {
    final phoneNumber = state.phoneNumber;
    final Uri uri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'No se pudo llamar al número $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: IconButton(
            onPressed: () async {
              _callNumber();
            },
            icon: const Icon(
              Icons.phone,
              color: Colors.grey,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        SizedBox(
          width: size.width * 0.009,
        ),
        Text(
          state.phoneNumber,
          style: mainDataStyle,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
