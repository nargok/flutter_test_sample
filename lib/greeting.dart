class Greeting {
  String greeting(String name) {
    if (name == null || name.isEmpty) {
      return '名前を入力してください';
    }
    return 'こんにちは $name さん';
  }
}