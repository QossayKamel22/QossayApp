import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class BaseApiService {
  Future<http.Response?> get(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      return _handleResponse(response);
    } catch (e) {
      print('Failed to GET from $url: $e');
      return null;
    }
  }

  Future<http.Response?> post(String url, Map<String, dynamic> body) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      print('Failed to POST to $url: $e');
      return null;
    }
  }

  Future<http.Response?> put(String url, Map<String, dynamic> body) async {
    try {
      final response = await http.put(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      print('Failed to PUT to $url: $e');
      return null;
    }
  }

  Future<http.Response?> delete(String url) async {
    try {
      final response = await http.delete(Uri.parse(url));
      return _handleResponse(response);
    } catch (e) {
      print('Failed to DELETE from $url: $e');
      return null;
    }
  }

  http.Response? _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    } else {
      print('Request failed: ${response.statusCode} - ${response.body}');
      return null;
    }
  }
}
