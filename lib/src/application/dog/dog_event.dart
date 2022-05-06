part of 'dog_bloc.dart';

abstract class DogEvent extends Equatable {
  const DogEvent();

  @override
  List<Object> get props => [];
}

class FetchDogImage extends DogEvent {}

class ChangeImageLoadingStatus extends DogEvent {
  const ChangeImageLoadingStatus({required this.status});

  final bool status;

  @override
  List<Object> get props => [status];
}
