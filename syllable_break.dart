class SyllableBreak {
  static String myConsonant = "\u1000-\u1021"; // "က-အ"

  static String enChar = "a-zA-Z0-9";

// "ဣဤဥဦဧဩဪဿ၌၍၏၀-၉၊။!-/:-@[-`{-~\s"
  static String otherChar =
      "\u1023\u1024\u1025\u1026\u1027\u1029\u102a\u103f\u104c\u104d\u104f\u1040-\u1049\u104a\u104b!-/:-@\\[-`\\{-~\\s";

  static String ssSymbol = "\u1039";

  static String ngaThat = "\u1004\u103a";

  static String aThat = "\u103a";

  static String BREAK_PATTERN = "((?<!" +
      ssSymbol +
      ")[" +
      myConsonant +
      "](?![" +
      aThat +
      ssSymbol +
      "])" +
      "|[" +
      enChar +
      otherChar +
      "])";

  static RegExp regExp = RegExp(BREAK_PATTERN);

  static List<String> segment(String text) {
    final newString = text.replaceAllMapped(regExp, (match) {
      return '𝕊${match.group(0)}';
    });
    final newStringArray = newString.split("𝕊");
    newStringArray.removeAt(0);
    return newStringArray;
  }
}
