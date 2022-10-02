# Get First Word From Myanmar Name

Syllable breaker for Myanmar name in Dart.

## Usage
```Dart
import 'syllable_break.dart';
/*
မင်းသစ်ထွန်း
ရဲရင့်ဝင်း
*/
final name = "မင်းသစ်ထွန်း";
print("Original text: $name");
final result = SyllableBreak.segment(name);
print("Before final result: ${result}");
print("Final result: ${result[0]}");
```

Output
```
Original text: မင်းသစ်ထွန်း
Before  result: [မင်း, သစ်, ထွန်း]
Final result: မင်း
```

## Credit
* This repo is a Dart port of [Syllable segmentation tool for Myanmar language](https://github.com/ye-kyaw-thu/sylbreak/tree/master/Javascript).