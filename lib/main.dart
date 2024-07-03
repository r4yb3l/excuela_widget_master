import 'package:excuela_widget_master/quiz_screen/bloc/quiz_screen_bloc.dart';
import 'package:excuela_widget_master/quiz_screen/quiz_screen.dart';
import 'package:excuela_widget_master/user_card/bloc/user_card_bloc.dart';
import 'package:excuela_widget_master/user_card/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'home_screen/home_screen.dart';
import 'loading_screen/bloc/loading_screen_bloc.dart';
import 'loading_screen/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<LoadingScreenBloc>(
            create: (context) => LoadingScreenBloc(),
          ),
          BlocProvider<UserCardBloc>(create: (context) => UserCardBloc()),
          BlocProvider<QuizScreenBloc>(
              create: (context) =>
                  QuizScreenBloc()..add(const QuizScreenEvent.initialize())),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: GoRouter(
            routes: [
              GoRoute(
                path: '/',
                name: 'homeScreen',
                builder: (context, state) => const HomeScreen(),
              ),
              GoRoute(
                path: '/loading',
                name: 'loadingScreen',
                builder: (context, state) => const LoadingScreen(),
              ),
              GoRoute(
                path: '/card',
                name: 'userCard',
                builder: (context, state) => const UserCard(),
              ),
              GoRoute(
                path: '/quiz',
                name: 'quizScreen',
                builder: (context, state) => const QuizScreen(),
              ),
            ],
          ),
        ));
  }
}
