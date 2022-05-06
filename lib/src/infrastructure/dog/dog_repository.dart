import 'package:dartz/dartz.dart';
import 'package:pet_assg/src/domain/core/endpoints.dart';
import 'package:pet_assg/src/domain/models/dog/dog.dart';
import 'package:pet_assg/src/infrastructure/core/api_client.dart';
import 'package:pet_assg/src/infrastructure/core/decoders.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';

class DogRepository {
  Future<Either<Failure, DogModel>> getDogImage() async {
    try {
      final response = await DioClient.get(
        Endpoints.dogImageFetchUrl,
      ).timeout(timeLimit);

      final dogModel = await Decoders.decodeDogImage(response);

      return right(dogModel);
    } on Failure catch (f) {
      return left(f);
    }
  }
}
