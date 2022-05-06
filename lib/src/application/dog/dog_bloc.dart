import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_assg/src/domain/core/status/status.dart';
import 'package:pet_assg/src/infrastructure/dog/dog_repository.dart';

part 'dog_event.dart';
part 'dog_state.dart';

class DogBloc extends Bloc<DogEvent, DogState> {
  DogBloc(this._dogRepository) : super(const DogState()) {
    on<FetchDogImage>(_onFetchDogImage);
    on<ChangeImageLoadingStatus>(_onChangeImageLoadingStatus);
  }

  final DogRepository _dogRepository;

  Future<void> _onFetchDogImage(
    FetchDogImage event,
    Emitter<DogState> emit,
  ) async {
    emit(
      state.copyWith(
        dogImageRequestStatus: const Status.loading(),
      ),
    );

    final linkResponse = await _dogRepository.getDogImage();

    return emit(
      linkResponse.fold(
        (f) => state.copyWith(
          dogImageRequestStatus: Status.failure(f),
        ),
        (dogModel) => state.copyWith(
          imageLink: dogModel.url,
          dogImageRequestStatus: const Status.success(),
        ),
      ),
    );
  }

  void _onChangeImageLoadingStatus(
    ChangeImageLoadingStatus event,
    Emitter<DogState> emit,
  ) {
    emit(
      state.copyWith(
        imageLoaded: event.status,
      ),
    );
  }
}
