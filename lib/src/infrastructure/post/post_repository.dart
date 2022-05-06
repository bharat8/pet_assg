import 'package:dartz/dartz.dart';
import 'package:pet_assg/src/domain/core/endpoints.dart';
import 'package:pet_assg/src/domain/models/post/post.dart';
import 'package:pet_assg/src/infrastructure/core/api_client.dart';
import 'package:pet_assg/src/infrastructure/core/decoders.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';

class PostRepository {
  Future<Either<Failure, List<PostModel>>> getPostsList() async {
    try {
      final response = await DioClient.get(
        Endpoints.postsFetchUrl,
      ).timeout(timeLimit);

      final postsList = await Decoders.decodePosts(response);

      return right(postsList);
    } on Failure catch (f) {
      return left(f);
    }
  }
}
