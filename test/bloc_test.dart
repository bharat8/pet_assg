import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_assg/src/application/dog/dog_bloc.dart';
import 'package:pet_assg/src/application/post/post_bloc.dart';
import 'package:pet_assg/src/domain/core/status/status.dart';
import 'package:pet_assg/src/domain/models/dog/dog.dart';
import 'package:pet_assg/src/domain/models/post/post.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';
import 'package:pet_assg/src/infrastructure/dog/dog_repository.dart';
import 'package:pet_assg/src/infrastructure/post/post_repository.dart';

class MockDogRepository extends Mock implements DogRepository {
  @override
  Future<Either<Failure, DogModel>> getDogImage() async {
    try {
      //uncomment next line to throw error
      //throw const ServerError(code: 404, message: 'Not found');

      return right(
        const DogModel(fileSizeBytes: 1000, url: 'https://www.google.com'),
      );
    } on Failure catch (f) {
      return left(f);
    }
  }
}

class MockPostRepository extends Mock implements PostRepository {
  @override
  Future<Either<Failure, List<PostModel>>> getPostsList() async {
    try {
      //uncomment next line to throw error
      //throw const ServerError(code: 404, message: 'Not found');

      return right(
        List.generate(
          2,
          (index) => PostModel(
            userId: 1,
            id: index,
            title: 'Hello $index',
            body: 'Testing $index',
          ),
        ),
      );
    } on Failure catch (f) {
      return left(f);
    }
  }
}

void main() {
  late MockDogRepository mockDogRepository;
  late MockPostRepository mockPostRepository;
  late ServerError serverError;

  setUp(() {
    mockDogRepository = MockDogRepository();
    mockPostRepository = MockPostRepository();
    serverError = const ServerError(code: 404, message: 'Not found');
  });

  group('FetchDogImage', () {
    const dog = DogModel(fileSizeBytes: 1000, url: 'https://www.google.com');

    blocTest<DogBloc, DogState>(
      'emits [Status.loading(), Status.success()] when successfull',
      build: () => DogBloc(mockDogRepository),
      act: (bloc) => bloc.add(FetchDogImage()),
      expect: () => [
        const DogState(
          dogImageRequestStatus: Status.loading(),
          imageLink: '',
          imageLoaded: false,
        ),
        DogState(
          dogImageRequestStatus: const Status.success(),
          imageLink: dog.url!,
          imageLoaded: false,
        ),
      ],
    );

    blocTest<DogBloc, DogState>(
      'emits [Status.loading(), Status.failure()] when unsuccessfull',
      build: () => DogBloc(mockDogRepository),
      act: (bloc) => bloc.add(FetchDogImage()),
      expect: () => [
        const DogState(
          dogImageRequestStatus: Status.loading(),
          imageLink: '',
          imageLoaded: false,
        ),
        DogState(
          dogImageRequestStatus: Status.failure(serverError),
          imageLink: '',
          imageLoaded: false,
        ),
      ],
    );
  });

  group('FetchPosts', () {
    final postsList = List.generate(
      2,
      (index) => PostModel(
        userId: 1,
        id: index,
        title: 'Hello $index',
        body: 'Testing $index',
      ),
    );

    blocTest<PostBloc, PostState>(
      'emits [Status.loading(), Status.success()] when successfull',
      build: () => PostBloc(mockPostRepository),
      act: (bloc) => bloc.add(FetchPostsList()),
      expect: () => [
        const PostState(
          postRequestStatus: Status.loading(),
          postsList: [],
        ),
        PostState(
          postRequestStatus: const Status.success(),
          postsList: postsList,
        ),
      ],
    );

    blocTest<PostBloc, PostState>(
      'emits [Status.loading(), Status.failure()] when unsuccessfull',
      build: () => PostBloc(mockPostRepository),
      act: (bloc) => bloc.add(FetchPostsList()),
      expect: () => [
        const PostState(
          postRequestStatus: Status.loading(),
          postsList: [],
        ),
        PostState(
          postRequestStatus: Status.failure(serverError),
          postsList: [],
        ),
      ],
    );
  });
}
