import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../bloc/user_card_bloc.dart';

class UserCardPersonalInfoWidgetsMapWidget extends StatelessWidget {
  const UserCardPersonalInfoWidgetsMapWidget({super.key, required this.size, required this.state, required this.mainDataStyle});

  final Size size;
  final UserCardState state;
  final TextStyle mainDataStyle;

  _launchMaps()async{
    String googleUrl = 'https://www.google.com/maps/@13.0927925,-86.3535781,15.08z?entry=ttu';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
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
              _launchMaps();
            },
            icon: const Icon(
              Icons.location_on,
              color: Colors.grey,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        SizedBox(
          width: size.width * 0.009,
        ),
        Text(
          state.location,
          style: mainDataStyle,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
