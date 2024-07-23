import 'dart:convert';

import 'package:accurate_lutfi/core/utils/api_clients.dart';
import 'package:http/http.dart' as http;

abstract class CityRemoteDatasource {
  Future<List<dynamic>> fetchCity();
}

class CityRemoteDatasourceImpl implements CityRemoteDatasource {
  @override
  Future<List<dynamic>> fetchCity() async {
    try {
      final response = await http.get(Uri.parse(ApiClients.cityUrl));

      return json.decode(response.body) as List<dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}
