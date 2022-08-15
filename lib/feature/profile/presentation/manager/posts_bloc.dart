import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_posts_usecase.dart';

part 'posts_bloc.freezed.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.fetch({required final int userId}) =
      _PostsFetchEvent;
}

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = PostsInitialState;

  const factory PostsState.loading() = PostsLoadingState;

  const factory PostsState.loaded({required final List<Post> userPosts}) =
      PostsLoadedState;

  const factory PostsState.error() = PostsErrorState;
}

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetUserPostsUseCase _getUserPostsUseCase;

  PostsBloc(this._getUserPostsUseCase) : super(const PostsState.initial()) {
    on<_PostsFetchEvent>(
        (event, emitter) => _fetchUserPostsEvent(event, emitter));
  }

  Future<void> _fetchUserPostsEvent(
      _PostsFetchEvent event, Emitter<PostsState> emitter) async {
    emitter(const PostsState.loading());
    final either = await _getUserPostsUseCase(UserPostsParams(event.userId));
    return either.fold((l) => emitter(const PostsState.error()),
        (r) => emitter(PostsState.loaded(userPosts: r)));
  }
}
