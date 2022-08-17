import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsonplaceholder_bloc/core/injection/injection.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/presentation/manager/post_info_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/presentation/widgets/comment_widget.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';

class PostCommentsListView extends StatelessWidget {
  final Post post;
  const PostCommentsListView({required this.post, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostInfoBloc, PostInfoState>(
      bloc: getIt<PostInfoBloc>()..add(PostInfoEvent.fetchComments(postId: post.id)),
      builder: (context, state) {
        if (state is PostInfoLoadedState) {
          final comments = state.comments;
          return ListView.separated(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) => CommentWidget(
                    comment: comments[index],
                  ),
              separatorBuilder: (_, index) => const Divider(
                    height: 50,
                  ),
              itemCount: comments.length);
        } else if (state is PostInfoErrorState) {
          return Text('${state.message}');
        }
        return const CircularProgressIndicator.adaptive();
      },
    );
  }
}
