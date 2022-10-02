import 'syllable_break.dart';

void main() {
  /*
    မင်းသစ်ထွန်း
    ရဲရင့်ဝင်း
   */
  final name = "မင်းသစ်ထွန်း";
  print("Original text: \t\t $name");
  final result = SyllableBreak.segment(name);
  print("Before final result: \t ${result}");
  print("Final result: \t\t ${result[0]}");
}
