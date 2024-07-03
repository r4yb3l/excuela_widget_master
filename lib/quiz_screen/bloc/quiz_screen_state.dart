part of 'quiz_screen_bloc.dart';

@freezed
class QuizScreenState with _$QuizScreenState {
  const factory QuizScreenState({
    required QuizData data,
    required int rightAnswerCount,
    required int wrongAnswerCount,
    required int? currentQuestionIndex,
    required bool? currentAnswerResult,
  }) = _QuizScreenState;

  factory QuizScreenState.initial() => QuizScreenState(
        data: QuizData.empty(),
        rightAnswerCount: 0,
        wrongAnswerCount: 0,
        currentQuestionIndex: 0,
        currentAnswerResult: null,
      );
}
