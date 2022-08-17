import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';

class UserPostView extends StatelessWidget {
  final Post post;

  const UserPostView({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(post.title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.bold)),
      const SizedBox(height: kDefaultPadding),
      Text(
        post.body,
        style: Theme.of(context).textTheme.bodyText2,
      )
    ]);
  }
}
