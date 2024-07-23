import 'dart:convert';

import 'package:accurate_lutfi/core/utils/api_clients.dart';
import 'package:http/http.dart' as http;

abstract class CityRemoteDatasource {
  Future<Map<String, dynamic>> fetchCity();
}

class CityRemoteDatasourceImpl implements CityRemoteDatasource {
  @override
  Future<Map<String, dynamic>> fetchCity() async {
    try {
      final response = await http.get(Uri.parse(ApiClients.cityUrl));

      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}
