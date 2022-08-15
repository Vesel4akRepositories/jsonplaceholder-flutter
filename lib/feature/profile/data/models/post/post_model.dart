import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

extension PostModelX on PostModel {
  Post toEntity() => Post(
        userId: userId,
        id: id,
        title: title,
        body: body,
      );
}
