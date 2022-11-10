class Performance {
  int number = 0;
  String name = '';
  String id = '';
  String password = '';

  Performance(
    this.number,
    this.name,
    this.id,
    this.password,
  );

  Performance.fromJson(Map<String, dynamic> performanceMap) {
    number = performanceMap['number'] ?? 0;
    name = performanceMap['name'] ?? '';
    id = performanceMap['id'] ?? '';
    password = performanceMap['password'] ?? '';
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'name': name,
      'id': id,
      'password': password,
    };
  }
}
