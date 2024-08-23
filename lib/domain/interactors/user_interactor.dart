import 'package:http/http.dart' as http;
import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/entities/user/user.dart';


class UserInteractor {
  final ApiService _apiService;

  UserInteractor(this._apiService);

  Future<List<User>?> getUsers() async {
    try {
      return await _apiService.fetchUsers();
    } catch (e) {
      print('Error fetching users: $e');
      return null;
    }
  }

  Future<http.Response?> login(String email, String password) async {
    try {
      return await _apiService.login(email, password);
    } catch (e) {
      print('Error logging in: $e');
      return null;
    }
  }

  Future<http.Response?> register(String email, String password, String username) async {
    try {
      return await _apiService.register(email, password);
    } catch (e) {
      print('Error registering: $e');
      return null;
    }
  }
}
