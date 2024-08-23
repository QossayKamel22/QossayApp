import 'dart:convert';
import 'package:http/http.dart' as http;

extension HttpResponseExtension on http.Response {
  bool get isSuccess => statusCode >= 200 && statusCode < 300;

  Map<String, dynamic>? get parsedJson {
    try {
      return jsonDecode(body) as Map<String, dynamic>?;
    } catch (e) {
      return null;
    }
  }
}
