enum UserRole { admin, customer, guest }

UserRole getUserRoleFromString(String role) {
  switch (role.toLowerCase()) {
    case 'admin':
      return UserRole.admin;
    case 'customer':
      return UserRole.customer;
    case 'guest':
      return UserRole.guest;
    default:
      throw Exception('Unknown role: $role');
  }
}
