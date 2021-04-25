import 'package:flutter/material.dart';
import 'package:flutter_tdd_demo/counter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_tdd_demo/main.dart';

/** This tutorial does not follow the "Test Driven Development" approach....
    We will deal with it later in second branch...*/
void main() {

  group('Counter', () {
    test('Value should start at 0', () {
      final v = Counter().value;

      expect(v, 0);
    });

    test('Counter value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('Counter value should be decremented', () {
      final c = Counter();

      c.decrement();

      expect(c.value, -1);
    });
  });
}
