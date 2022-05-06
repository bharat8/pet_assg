part of 'dog_bloc.dart';

class DogState extends Equatable {
  const DogState({
    this.dogImageRequestStatus = const Status.initial(),
    this.imageLink = '',
    this.imageLoaded = false,
  });

  final Status dogImageRequestStatus;
  final String imageLink;
  final bool imageLoaded;

  DogState copyWith({
    Status? dogImageRequestStatus,
    String? imageLink,
    bool? imageLoaded,
  }) {
    return DogState(
      dogImageRequestStatus:
          dogImageRequestStatus ?? this.dogImageRequestStatus,
      imageLink: imageLink ?? this.imageLink,
      imageLoaded: imageLoaded ?? this.imageLoaded,
    );
  }

  @override
  List<Object?> get props => [
        dogImageRequestStatus,
        imageLink,
        imageLoaded,
      ];
}
