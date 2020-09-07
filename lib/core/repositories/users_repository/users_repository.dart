import 'package:flutter_start/core/models/user/user.dart';

abstract class UsersRepository {
  /// - throws `RepositoryException` if fetch fails
  Future<User> fetchUser(int userId);
}
