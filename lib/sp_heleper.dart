import 'package:shared_preferences/shared_preferences.dart';
import 'data/performance.dart';
import 'dart:convert';

class SPHelper {
  static late SharedPreferences prefs;

  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future writePerformance(Performance performance) async {
    prefs.setString(
        performance.id.toString(), json.encode(performance.toJson()));
  }

  List<Performance> getPerfomanve() {
    List<Performance> performances = [];
    Set<String> keys = prefs.getKeys();
    keys.forEach((String key) {
      Performance performance =
          Performance.fromJson(json.decode(prefs.getString(key) ?? ''));
      performances.add(performance);
    });
    return performances;
  }
}
