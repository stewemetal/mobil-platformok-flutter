import 'question.dart';

class QuestionsResponse {
  final List<Question> items;

  QuestionsResponse.fromJson(Map<String, dynamic> map)
      : items = List<Question>.from(
          map["items"].map(
            (it) => Question.fromJson(it),
          ),
        );
}
