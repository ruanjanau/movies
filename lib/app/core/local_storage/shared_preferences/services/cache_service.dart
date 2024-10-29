import 'dart:convert';

import 'package:dio/dio.dart';

import '../../local_storage.dart';

class SharedPreferencesCacheService {
  final LocalStorage _localStorage;

  SharedPreferencesCacheService({
    required LocalStorage localStorage,
  }) : _localStorage = localStorage;

  Future<Map<String, dynamic>?> getEntry(String cacheKey) async {
    final String? entry = await _localStorage.read<String>(cacheKey);

    if (entry == null) return null;

    final decodedJson = jsonDecode(entry);

    bool isValid =
        DateTime.now().isBefore(DateTime.parse(decodedJson['expiry']));
    if (!isValid) {
      await _localStorage.remove(cacheKey);
      return null;
    }

    return decodedJson['value'];
  }

  Future<void> putEntry(Response response, Duration cacheDuration) async {
    final key = response.realUri.toString();
    final entry = {
      'key': key,
      'status_code': response.statusCode,
      'value': response.data,
      'expiry': DateTime.now().add(cacheDuration).toIso8601String(),
    };
    _localStorage.write<String>(key, jsonEncode(entry));
  }
}
