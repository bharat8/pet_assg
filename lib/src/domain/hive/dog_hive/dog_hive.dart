import 'package:hive/hive.dart';

part 'dog_hive.g.dart';

@HiveType(typeId: 0)
class DogHive {
  @HiveField(0)
  final String dogImage;

  DogHive({
    required this.dogImage,
  });
}
