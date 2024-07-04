import 'package:excuela_widget_master/quiz_screen/bloc/quiz_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context.read<QuizScreenBloc>().add(QuizScreenEvent.initialize());
    return Scaffold(
        appBar: AppBar(
          title: Image.network('https://excuela.com/excuela-logo.png'),
          centerTitle: true,
        ),
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: Image.network('https://excuela.com/interfaz-intro.png', height: size.height*0.8,)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                'Widget Master',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.pushNamed('loadingScreen');
                      },
                      child: const Text('Loading Screen')),
                ],
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.pushNamed('userCard');
                      },
                      child: const Text('User Card')),
                ],
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.pushNamed('quizScreen');
                      },
                      child: const Text('Quiz Screen')),
                ],
              ),
            ],
          ),
        ]));
  }
}
