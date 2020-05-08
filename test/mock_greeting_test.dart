import 'package:counterapp/greeting.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Mockの定義
// Mockクラスを継承し、モック化したいクラスをinterfaceとして定義する
class MockGreeting extends Mock implements Greeting{}

void main() {
  test('mockito', () async {
    final greeting = MockGreeting();

    when(greeting.slowGreeting()).thenAnswer((_) => Future.value('こんばんは'));

    final result = await greeting.slowGreeting();
    expect(result, 'こんばんは');
  });
}