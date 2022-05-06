import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pet_assg/src/application/dog/dog_bloc.dart';
import 'package:pet_assg/src/application/post/post_bloc.dart';
import 'package:pet_assg/src/domain/hive/dog_hive/dog_hive.dart';
import 'package:pet_assg/src/infrastructure/dog/dog_repository.dart';
import 'package:pet_assg/src/infrastructure/post/post_repository.dart';
import 'package:pet_assg/src/presentation/home/views/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(DogHiveAdapter());
  await Hive.openBox('pet_assg');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DogRepository(),
        ),
        RepositoryProvider(
          create: (context) => PostRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DogBloc(DogRepository()),
          ),
          BlocProvider(
            create: (context) => PostBloc(PostRepository()),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pet Perfect Assg',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            textTheme: ThemeData.light().textTheme,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
