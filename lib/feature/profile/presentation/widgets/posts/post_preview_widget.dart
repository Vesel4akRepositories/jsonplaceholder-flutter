import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/core/utils/routes.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/presentation/pages/post_info_page.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';

class PostPreviewWidget extends StatelessWidget {
  final Post post;

  const PostPreviewWidget({required this.post, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, Routes.postInfo,
          arguments: PostInfoPageArgs(post: post)),
      contentPadding: EdgeInsets.zero,
      title: Text(post.title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.bold)),
      subtitle: Text(
        post.body,
        style: Theme.of(context).textTheme.bodyText2,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
