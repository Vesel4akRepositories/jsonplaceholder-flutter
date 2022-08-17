import 'package:flutter/material.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';
import 'package:jsonplaceholder_bloc/core/widgets/gap/gap.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/entities/comment.dart';

class CommentWidget extends StatelessWidget {
  final Comment comment;

  const CommentWidget({required this.comment, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? caption = Theme.of(context).textTheme.caption;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          comment.email,
          style: caption,
        ),
        const Gap(
          kDefaultPadding,
        ),
        Text(
          comment.body,
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }
}
