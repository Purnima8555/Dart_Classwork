// Write a dart program to check whether a character is a vowel or consonant.

void checkVowelOrConsonant(String char) {
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  if (char.length == 1) {
    if (vowels.contains(char.toLowerCase())) {
      print("$char is a Vowel.");
    } else {
      print("$char is a Consonant.");
    }
  } else {
    print("Invalid input.");
  }
}

void main() {
  String char = 'a';
  checkVowelOrConsonant(char);
}
