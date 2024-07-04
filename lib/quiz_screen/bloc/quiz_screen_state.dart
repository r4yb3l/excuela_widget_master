part of 'quiz_screen_bloc.dart';

enum CurrentQuestionAnswer{empty, success, failure}
enum StateStatus {initial, loading, success, failure}

@freezed
class QuizScreenState with _$QuizScreenState {
  const factory QuizScreenState({
    required QuizData data,
    required int rightAnswerCount,
    required int wrongAnswerCount,
    required int currentQuestionIndex,
    required int? currentUserSelectedOption,
    required bool enableNextButton,
    required CurrentQuestionAnswer currentAnswerStatus,
    required bool showMetrics,
  }) = _QuizScreenState;

  factory QuizScreenState.initial() => QuizScreenState(
        data: QuizData.empty(),
        rightAnswerCount: 0,
        wrongAnswerCount: 0,
        currentQuestionIndex: 0,
        currentUserSelectedOption: null,
        enableNextButton: false,
        currentAnswerStatus: CurrentQuestionAnswer.empty,
        showMetrics: false,
      );
}
