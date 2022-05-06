import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dog.g.dart';

class DogFields {
  DogFields._();

  static const fileSizeBytes = 'fileSizeBytes';
  static const url = 'url';
}

@JsonSerializable()
class DogModel extends Equatable {
  const DogModel({
    this.fileSizeBytes,
    this.url,
  });

  factory DogModel.fromJson(Map<String, dynamic> json) =>
      _$DogModelFromJson(json);

  Map<String, dynamic> toJson() => _$DogModelToJson(this);

  @JsonKey(name: DogFields.fileSizeBytes)
  final int? fileSizeBytes;

  @JsonKey(name: DogFields.url)
  final String? url;

  @override
  List<Object?> get props => [
        fileSizeBytes,
        url,
      ];
}
