import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../bloc/user_card_bloc.dart';

class UserCardPersonalInfoWidgetsEmailWidget extends StatelessWidget {
  const UserCardPersonalInfoWidgetsEmailWidget(
      {super.key,
      required this.size,
      required this.state,
      required this.mainDataStyle});

  final Size size;
  final UserCardState state;
  final TextStyle mainDataStyle;

  void _sendEmail({required String email}) {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {'subject': 'Contacting you', 'body': 'Hello!'},
    );
    launchUrl(emailLaunchUri);
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
              _sendEmail(email: state.email);
            },
            icon: const Icon(
              Icons.email,
              color: Colors.grey,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        SizedBox(
          width: size.width * 0.009,
        ),
        Text(
          state.email,
          style: mainDataStyle,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
