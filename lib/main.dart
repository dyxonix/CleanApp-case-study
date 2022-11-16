import 'package:flutter/material.dart';

void main() {
  final numbers = <int>[1, 2, 3, 5, 6, 7];

  print(numbers.firstWhereOrNull((element) => element > 9));
}

extension IterableExtension<int> on List<int> {
  int? firstWhereOrNull(bool ext(int element)) {
    for (var element in this) {
      if (ext(element)) return element;
    }
    return null;
  }
}
