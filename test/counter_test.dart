import 'package:test/test.dart';
import 'package:counterapp/counter.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });
  });

  test('value should be incremented', () {
    final counter = Counter();
    counter.increment();

    expect(counter.value, 1);
  });
}
