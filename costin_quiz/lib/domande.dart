// ***COSTIN DIANA 5B IA 28/02/2022***

class Question {
  
  final String category;
  final String difficulty;
  final String type;
  final String question;
  final String correct;
  final List<String> incorrect;

  Question({
    required this.category,
    required this.difficulty,
    required this.type,
    required this.question,
    required this.correct,
    required this.incorrect
  });

  factory Question.fromJson(Map<String, dynamic> parsedJson){
    return Question(//serve per prendere le info dal file json
      category: parsedJson['category'],
      difficulty : parsedJson ['difficulty'],
      type : parsedJson ['type'],
      question : parsedJson['question'],
      correct : parsedJson['correct_answer'],
      incorrect : parsedJson['incorrect_answers'].map<String>((val) => val.toString()).toList()
      
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "question "+this.question+": "+this.difficulty+" "+this.category+" "+this.correct;
  }
}