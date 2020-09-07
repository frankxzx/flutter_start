import 'package:flutter_start/core/models/post/post.dart';
import 'package:flutter_start/core/services/navigation/navigation_service.dart';
import 'package:flutter_start/locator.dart';
import 'package:flutter_start/ui/router.gr.dart';
import 'package:stacked/stacked.dart';

class PostTileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Post _post;
  Post get post => _post;

  void init(Post post) {
    _post = post;
  }

  void showPostDetails() {
    _navigationService.pushNamed(Routes.postDetailsView,
        arguments: PostDetailsViewArguments(post: _post));
  }
}
