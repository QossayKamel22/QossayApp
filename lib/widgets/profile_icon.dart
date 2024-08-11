import 'package:flutter/material.dart';
import 'package:qossay_s_application1/services/api_service.dart';
import 'package:qossay_s_application1/models/User.dart';

class ProfileIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  ProfileIconButton({required this.onPressed});

  final ApiService apiService = ApiService();

  Future<String?> _fetchUserImage() async {
    try {
      List<User> users = await apiService.fetchUsers();
      if (users.isNotEmpty) {
        return users[0].avatar;
      }
    } catch (e) {
      print('Error fetching user image: $e');
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: FutureBuilder<String?>(
        future: _fetchUserImage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Icon(Icons.error, color: Colors.white);
          } else {
            String? imageUrl = snapshot.data;
            return CircleAvatar(
              radius: 20,
              backgroundColor: Colors.orange,
              backgroundImage: imageUrl != null && imageUrl.isNotEmpty
                  ? NetworkImage(imageUrl)
                  : null,
              child: imageUrl == null || imageUrl.isEmpty
                  ? Icon(Icons.person, size: 25.0, color: Colors.white)
                  : null,
            );
          }
        },
      ),
    );
  }
}
