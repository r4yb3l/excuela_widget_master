part of 'quiz_screen_bloc.dart';

@freezed
class QuizScreenEvent with _$QuizScreenEvent {
  const factory QuizScreenEvent.initialize() = _Initialize;
  const factory QuizScreenEvent.validateAnswer(int questionIndex, int userAnswerIndex) = _ValidateAnswer;
  const factory QuizScreenEvent.nextQuestion() = _NextQuestion;
}
