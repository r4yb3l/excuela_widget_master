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
            ],
          ),
        ));
  }
}
