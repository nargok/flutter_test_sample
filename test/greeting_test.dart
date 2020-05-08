import 'package:counterapp/greeting.dart';
import 'package:test/test.dart';

void main() {
  test('挨拶はこんにちは 名前　さんである', () {
    final greeting = Greeting();
    final result = greeting.greeting('太郎');
    expect(result, 'こんにちは 太郎 さん');
  });

  test('名前がnullのときは 名前を入力してください となる', () {
    final greeting = Greeting();
    final result = greeting.greeting(null);
    expect(result, '名前を入力してください');
  });

  test('名前が空文字のときは 名前を入力してください となる', () {
    final greeting = Greeting();
    final result = greeting.greeting('');
    expect(result, '名前を入力してください');
  });

}