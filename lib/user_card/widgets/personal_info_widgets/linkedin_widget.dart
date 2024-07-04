import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class UserCardPersonalInfoWidgetsLinkedinWidget extends StatelessWidget {
  const UserCardPersonalInfoWidgetsLinkedinWidget(
      {super.key,
      required this.size,
      required this.state,
      required this.mainDataStyle});

  final Size size;
  final UserCardState state;
  final TextStyle mainDataStyle;

  void _openLinkedin() async {
    final Uri uri = Uri.parse('https://www.linkedin.com/in/r4yb3l/');
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
      );
    } else {
      throw 'No se pudo abrir $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
            onPressed: () async {
              _openLinkedin();
            },
            icon: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        SizedBox(
          width: size.width * 0.009,
        ),
        Text(
          state.name,
          style: mainDataStyle,
          textAlign: TextAlign.start,
        ),
        const Expanded(child: SizedBox()),
        SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
              onPressed: () {
                context.read<UserCardBloc>().add(
                    UserCardEvent.changeLikeValue(
                        newValue: !state.isLiked));
              },
              padding: EdgeInsets.zero,
              icon: Icon(state.isLiked
                  ? Icons.favorite
                  : Icons.favorite_outline),
              color: state.isLiked ? Colors.red : Colors.blueGrey),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
