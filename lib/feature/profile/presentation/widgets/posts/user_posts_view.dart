import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/manager/posts_bloc.dart';
import 'package:jsonplaceholder_bloc/feature/profile/presentation/widgets/posts/post_preview_widget.dart';

class UserPostsView extends StatelessWidget {
  const UserPostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Publications',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        BlocBuilder<PostsBloc, PostsState>(
          bloc: context.read<PostsBloc>(),
          builder: (context, state) {
            if (state is PostsLoadedState) {
              return ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: PostPreviewWidget(post: state.userPosts[index]),
                    );
                  },
                  separatorBuilder: (_, index) => const Divider(
                        height: 0,
                      ),
                  itemCount: 3);
            } else if (state is PostsErrorState) {
              return const Center(child: Text('Error'));
            }
            return const Center(child: CircularProgressIndicator.adaptive());
          },
        )
      ],
    );
  }
}
