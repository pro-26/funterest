import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  GetStorage box = GetStorage();
  var types = [
    "education",
    "recreational",
    "social",
    "diy",
    "charity",
    "cooking",
    "relaxation",
    "music",
    "busywork",
  ];
  var selectedType = ''.obs;
  var activity = 'Tap the button to get a\nfun activity'.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    selectedType.value = box.read('selectedType') ?? '';
    super.onInit();
  }

  void loadRecentActivity() {
    activity.value =
        box.read('activity') ?? 'Tap the button to get a\nfun activity';
  }

  void fetchNewActivity() async {
    isLoading.value = true;
    try {
      final result = await fetchActivityFromBoredApi();
      activity.value = result;
      box.write('activity', result);
    } catch (e) {
      activity.value = 'Failed to Load Activity';
    } finally {
      isLoading.value = false;
    }
  }

  /// Fetches an activity string from the Bored API.
  ///
  /// Returns the value of the 'activity' key on success.
  /// Throws an [Exception] with a helpful message on failure.
  Future<String> fetchActivityFromBoredApi() async {
    final uri = Uri.parse(
      'https://bored.api.lewagon.com/api/activity${selectedType.value.isNotEmpty ? '?type=${selectedType.value}' : ''}',
    );

    try {
      final response = await http.get(uri).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) {
        throw Exception('Request failed with status: ${response.statusCode}');
      }

      final Map<String, dynamic> json = jsonDecode(response.body);

      if (json.containsKey('activity') && json['activity'] is String) {
        return json['activity'] as String;
      }

      throw Exception('Response JSON does not contain an "activity" field');
    } catch (e) {
      // Bubble up a friendly error message for the caller
      throw Exception('Error fetching activity: ${e.toString()}');
    }
  }

}
