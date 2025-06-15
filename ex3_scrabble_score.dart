const Map<String, int> letterScores = {
  'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 'T': 1,
  'D': 2, 'G': 2,
  'B': 3, 'C': 3, 'M': 3, 'P': 3,
  'F': 4, 'H': 4, 'V': 4, 'W': 4, 'Y': 4,
  'K': 5,
  'J': 8, 'X': 8,
  'Q': 10, 'Z': 10
};

int calculateScore(String word) {
  int totalScore = 0;
  String upperCaseWord = word.toUpperCase();

  for (int i = 0; i < upperCaseWord.length; i++) {
    String letter = upperCaseWord[i];
    totalScore += letterScores[letter] ?? 0;
  }
  return totalScore;
}


void main() {
  //stdout.write("Lütfen bir kelime yazınız: ");
  //String userInput = stdin.readLineSync() ?? "";

  final String userInput = "Ahmet";

  if (userInput.isNotEmpty) {
    int score = calculateScore(userInput);
    print("Girdiğiniz kelime: '$userInput'");
    print("Toplam skor: $score");
  } else {
    print("Geçerli bir kelime girmediniz.");
  }
}