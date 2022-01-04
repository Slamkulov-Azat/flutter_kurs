class Question {
  int questionNumber;
  String questionRuText;
  String questionEnText;
  String questionKgText;
  bool questionAnswer;

  Question(int i, String q, String d, String b, bool a) {
    questionNumber = i;
    questionRuText = q;
    questionEnText = d;
    questionKgText = b;
    questionAnswer = a;   
  }
}