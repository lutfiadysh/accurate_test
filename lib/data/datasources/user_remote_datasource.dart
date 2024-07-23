import 'dart:convert';

import 'package:accurate_lutfi/core/utils/api_clients.dart';
import 'package:http/http.dart' as http;

abstract class UserRemoteDatasource {
  Future<List<dynamic>> fetchUser();

  Future<Map<String, dynamic>> createUser({
    required String name,
    required String address,
    required String email,
    required String phoneNumber,
    required String city,
  });
}

class UserRemoteDatasourceImpl implements UserRemoteDatasource {
  @override
  Future<List<dynamic>> fetchUser() async {
    try {
      final response = await http.get(Uri.parse(ApiClients.userUrl));

      return json.decode(response.body) as List<dynamic>;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> createUser({
    required String name,
    required String address,
    required String email,
    required String phoneNumber,
    required String city,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(ApiClients.userUrl),
        body: {
          "name": name,
          "address": address,
          "email": email,
          "phoneNumber": phoneNumber,
          "city": city,
        },
      );

      return json.decode(response.body) as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}
