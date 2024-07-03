import 'package:excuela_widget_master/quiz_screen/domain/quiz_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_data.freezed.dart';

@freezed
class QuizData with _$QuizData {
  const factory QuizData(
      {required List<QuizQuestion> questions,
      required int correctAnswers,
      required int wrongAnswers,

      required double percentage}) = _QuizData;

  factory QuizData.empty() => const QuizData(
      questions: [], correctAnswers: 0, wrongAnswers: 0, percentage: 0.0,);
}
