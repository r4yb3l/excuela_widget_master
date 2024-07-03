import 'package:freezed_annotation/freezed_annotation.dart';


part 'quiz_question.freezed.dart';
@freezed
class QuizQuestion with _$QuizQuestion {
  const factory QuizQuestion({
    required String topic,
    required String question,
    required List<String> answers,
    required int correctAnswerIndex,

  }) = _QuizQuestion;


  factory QuizQuestion.empty() => QuizQuestion(
        topic: '',
        question: '',
        answers: [],
        correctAnswerIndex: 0,
      );
}
