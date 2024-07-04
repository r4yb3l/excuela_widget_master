import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickalert/quickalert.dart';

import 'bloc/quiz_screen_bloc.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
          centerTitle: true,
        ),
        body: BlocListener<QuizScreenBloc, QuizScreenState>(
          listener: (context, state) {
            if (state.currentAnswerStatus == CurrentQuestionAnswer.success) {
              QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  title: 'Respuesta correcta!!');
            }
            if (state.currentAnswerStatus == CurrentQuestionAnswer.failure) {
              QuickAlert.show(
                  context: context,
                  type: QuickAlertType.error,
                  title: 'Respuesta incorrecta!!',
                  text:
                      'La respuesta correcta era ${state.data.questions[state.currentQuestionIndex].answers[state.data.questions[state.currentQuestionIndex].correctAnswerIndex]}');
            }
          },
          child: BlocBuilder<QuizScreenBloc, QuizScreenState>(
            builder: (context, state) {
              if (state.showMetrics == false) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.65,
                      child: Column(
                        children: [
                          Text(
                              'Pregunta de ${state.data.questions[state.currentQuestionIndex].topic}'),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            state.data.questions[state.currentQuestionIndex]
                                .question,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          ...state.data.questions[state.currentQuestionIndex]
                              .answers
                              .asMap()
                              .entries
                              .map((entry) {
                            int index = entry.key;
                            String answer = entry.value;
                            return CheckboxListTile(
                              title: Text(answer),
                              value: state.currentUserSelectedOption == index,
                              enabled: state.currentUserSelectedOption == null,
                              onChanged: (bool? newValue) {
                                context.read<QuizScreenBloc>().add(
                                    QuizScreenEvent.validateAnswer(
                                        state.currentQuestionIndex, index));
                              },
                            );
                          }),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Visibility(
                            visible: state.enableNextButton,
                            child: ElevatedButton(
                                onPressed: () {
                                  context.read<QuizScreenBloc>().add(
                                      const QuizScreenEvent.nextQuestion());
                                },
                                child: const Text('Siguiente')),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                                'Preguntas correctas: ${state.rightAnswerCount}')
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                                'Preguntas incorrectas: ${state.wrongAnswerCount}')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Preguntas respondidas: ${state.currentQuestionIndex}')
                      ],
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Preguntas respondidas: ${state.currentQuestionIndex}',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text('Preguntas correctas: ${state.rightAnswerCount}'),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text('Preguntas incorrectas: ${state.wrongAnswerCount}'),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text('Efectividad:'),
                    SizedBox(
                      height: size.height * 0.005,
                    ),
                    Text(
                      '${state.data.percentage * 100}%',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: state.data.percentage == 1
                              ? Colors.green
                              : state.data.percentage > 0.75 &&
                                      state.data.percentage < 1
                                  ? Colors.lightGreenAccent
                                  : state.data.percentage > 0.5 &&
                                          state.data.percentage < 0.75
                                      ? Colors.yellow
                                      : state.data.percentage > 0.25 &&
                                              state.data.percentage < 0.5
                                          ? Colors.orange
                                          : Colors.red),
                    )
                  ],
                );
              }
            },
          ),
        ));
  }
}
