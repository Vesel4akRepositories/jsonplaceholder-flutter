import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/entities/comment.dart';

part 'comment_model.freezed.dart';

part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}

extension CommentModelX on CommentModel {
  Comment toEntity() => Comment(
        postId: postId,
        id: id,
        name: name,
        email: email,
        body: body,
      );
}
