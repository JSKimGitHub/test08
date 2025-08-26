void main() {
  // ===============================
  // List 실습
  // ===============================
  List<String> animals = [];
  animals.addAll(['dog', 'cat', 'tiger', 'lion', 'elephant']); // 5개 추가
  print("원래 List: $animals");

  animals.removeAt(1); // 두 번째 데이터 제거 (index 1)
  print("두 번째 데이터 제거 후 List: $animals\n");

  // ===============================
  // Map 실습
  // ===============================
  Map<String, int> people = {};
  people['Alice'] = 23;
  people['Bob'] = 30;
  people['Charlie'] = 27; // 이름 → 나이 3개 추가
  print("원래 Map: $people");

  // 두 번째 데이터 제거 (keys.toList()[1] 로 key 찾기)
  String secondKey = people.keys.toList()[1];
  people.remove(secondKey);
  print("두 번째 데이터 제거 후 Map: $people\n");

  // ===============================
  // Set 실습
  // ===============================
  Set<String> countries = {};
  countries.addAll(['Korea', 'Japan', 'USA', 'China', 'Germany']); // 나라 이름 5개 추가
  print("원래 Set: $countries");

  // Set은 순서가 없으므로 toList()로 변환해서 첫 번째 원소 제거
  String firstCountry = countries.toList()[0];
  countries.remove(firstCountry);
  print("첫 번째 데이터 제거 후 Set: $countries");
}
