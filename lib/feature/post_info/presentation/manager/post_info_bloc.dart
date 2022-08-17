import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/entities/comment.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/use_cases/fetch_post_comments.dart';

part 'post_info_bloc.freezed.dart';

@freezed
class PostInfoEvent with _$PostInfoEvent {
  const factory PostInfoEvent.fetchComments({required int postId}) =
      _PostInfoFetchCommentsEvent;
}

@freezed
class PostInfoState with _$PostInfoState {
  const factory PostInfoState.initial() = PostInfoInitialState;

  const factory PostInfoState.error({String? message}) = PostInfoErrorState;

  const factory PostInfoState.loaded({required List<Comment> comments}) =
      PostInfoLoadedState;

  const factory PostInfoState.loading() = PostInfoLoadingState;
}

@injectable
class PostInfoBloc extends Bloc<PostInfoEvent, PostInfoState> {
  final FetchPostUseCase _fetchPostUseCase;

  PostInfoBloc(this._fetchPostUseCase) : super(const PostInfoState.initial()) {
    on<_PostInfoFetchCommentsEvent>(
        (event, emitter) => _fetchPostComments(event, emitter));
  }

  Future<void> _fetchPostComments(
      _PostInfoFetchCommentsEvent event, Emitter<PostInfoState> emitter) async {
    emitter(const PostInfoState.loading());
    final either = await _fetchPostUseCase(PostInfoParams(event.postId));
    return either.fold(
        (l) => emitter(PostInfoState.error(message: _mapFailureToMessage(l))),
        (r) => emitter(PostInfoState.loaded(comments: r)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server Error!';
      case NoInternetConnectionFailure:
        return 'Ops..Please, check your connection';
      default:
        return 'Unexpected error';
    }
  }
}
