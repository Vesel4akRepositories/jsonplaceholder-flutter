import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';
import 'package:jsonplaceholder_bloc/core/widgets/gap/gap.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/presentation/widgets/post_comments_list.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';

import '../widgets/user_post_view.dart';

class PostInfoPage extends StatelessWidget {
  final Post post;

  const PostInfoPage({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView(
            children: [
              UserPostView(post: post),
              const Divider(
                thickness: 2,
              ),
              const Gap(kDefaultPadding),
              Text(
                'Comments',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Gap(kDefaultPadding),
              Expanded(
                child: PostCommentsListView(
                  post: post,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PostInfoPageArgs {
  final Post post;

  PostInfoPageArgs({required this.post});
}
