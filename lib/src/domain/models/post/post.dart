import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

class PostFields {
  PostFields._();

  static const userId = 'userId';
  static const id = 'id';
  static const title = 'title';
  static const body = 'body';
}

@JsonSerializable()
class PostModel extends Equatable {
  const PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @JsonKey(name: PostFields.userId)
  final int? userId;

  @JsonKey(name: PostFields.id)
  final int? id;

  @JsonKey(name: PostFields.title)
  final String? title;

  @JsonKey(name: PostFields.body)
  final String? body;

  @override
  List<Object?> get props => [
        userId,
        id,
        title,
        body,
      ];
}
