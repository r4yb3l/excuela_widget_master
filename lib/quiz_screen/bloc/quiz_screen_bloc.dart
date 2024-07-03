import 'package:bloc/bloc.dart';
import 'package:excuela_widget_master/quiz_screen/domain/quiz_data.dart';
import 'package:excuela_widget_master/quiz_screen/domain/quiz_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_screen_event.dart';

part 'quiz_screen_state.dart';

part 'quiz_screen_bloc.freezed.dart';

class QuizScreenBloc extends Bloc<QuizScreenEvent, QuizScreenState> {
  QuizScreenBloc() : super(QuizScreenState.initial()) {
    on<QuizScreenEvent>((event, emit) {
      event.when(initialize: () {
        emit(state.copyWith(data: data, currentQuestionIndex: 0));
      }, nextQuestion: () {
        emit(state.copyWith(
            currentQuestionIndex: state.currentQuestionIndex! + 1,
            currentAnswerResult: null));
      }, validateAnswer: (int questionIndex, int userAnswerIndex) {
        if (userAnswerIndex ==
            data.questions[questionIndex].correctAnswerIndex) {
          emit(state.copyWith(
              rightAnswerCount: state.rightAnswerCount + 1,
              currentAnswerResult: true));
        } else {
          emit(state.copyWith(
              wrongAnswerCount: state.wrongAnswerCount + 1,
              currentAnswerResult: false));
        }
      });
    });
  }

  final data = const QuizData(questions: [
    QuizQuestion(
        topic: 'Tecnologia',
        question:
            'Cual es el nombre de la pieza que es por asi decir el cerebro de una computadora?',
        answers: ['Motherboard', 'CPU', 'GPU', 'RAM'],
        correctAnswerIndex: 1),
    QuizQuestion(
        topic: 'Geografia',
        question: 'En que continente se encuentra la ciudad de Rio de Janeiro?',
        answers: ['America', 'Europa', 'Asia', 'Africa'],
        correctAnswerIndex: 0),
    QuizQuestion(
        topic: 'Ciencias',
        question: 'Cual es el planeta mas caliente del sistema solar?',
        answers: ['Mercurio', 'Venus', 'Tierra', 'Marte'],
        correctAnswerIndex: 1),
    QuizQuestion(
      topic: 'Historia',
      question:
          'Cual ha sido el unico pais del mundo en usar armas atomicas en conflicto?',
      answers: ['Estados Unidos', 'China', 'Japon', 'Corea'],
      correctAnswerIndex: 0,
    )
  ], correctAnswers: 0, wrongAnswers: 0, percentage: 0);
}
