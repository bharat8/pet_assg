part of 'post_bloc.dart';

class PostState extends Equatable {
  const PostState({
    this.postRequestStatus = const Status.initial(),
    this.postsList = const [],
  });

  final Status postRequestStatus;
  final List<PostModel> postsList;

  PostState copyWith({
    Status? postRequestStatus,
    List<PostModel>? postsList,
  }) {
    return PostState(
      postRequestStatus: postRequestStatus ?? this.postRequestStatus,
      postsList: postsList ?? this.postsList,
    );
  }

  @override
  List<Object?> get props => [
        postRequestStatus,
        postsList,
      ];
}
