import 'package:flutter_start/core/models/post/post.dart';

abstract class PostsRepository {
  Future<List<Post>> fetchPosts();
}
