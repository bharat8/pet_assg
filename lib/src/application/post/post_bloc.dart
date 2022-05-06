import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_assg/src/domain/core/status/status.dart';
import 'package:pet_assg/src/domain/models/post/post.dart';
import 'package:pet_assg/src/infrastructure/post/post_repository.dart';

part 'post_state.dart';
part 'post_event.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(this._postRepository) : super(const PostState()) {
    on<FetchPostsList>(_onFetchPostsList);
  }

  final PostRepository _postRepository;

  Future<void> _onFetchPostsList(
    FetchPostsList event,
    Emitter<PostState> emit,
  ) async {
    emit(
      state.copyWith(
        postRequestStatus: const Status.loading(),
      ),
    );

    final postsResponse = await _postRepository.getPostsList();

    return emit(
      postsResponse.fold(
        (f) => state.copyWith(
          postRequestStatus: Status.failure(f),
        ),
        (postsList) => state.copyWith(
          postsList: postsList,
          postRequestStatus: const Status.success(),
        ),
      ),
    );
  }
}
