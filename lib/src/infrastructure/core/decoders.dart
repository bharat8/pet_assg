import 'package:dio/dio.dart';
import 'package:pet_assg/src/domain/models/dog/dog.dart';
import 'package:pet_assg/src/domain/models/post/post.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';

class Decoders {
  const Decoders._();

  /// Decode user stories
  static Future<DogModel> decodeDogImage(Response response) async {
    try {
      final map = response.data as Map<String, dynamic>;

      final dogModel = DogModel.fromJson(map);

      return dogModel;
    } catch (e) {
      throw Failure.value(message: e.toString());
    }
  }

  /// Decode user stories
  static Future<List<PostModel>> decodePosts(Response response) async {
    try {
      final list = response.data as List;

      return list
          .map(
            (dynamic e) => PostModel.fromJson(e),
          )
          .toList();
    } catch (e) {
      throw Failure.value(message: e.toString());
    }
  }
}
