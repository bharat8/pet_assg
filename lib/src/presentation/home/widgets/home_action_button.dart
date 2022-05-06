import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:pet_assg/src/application/dog/dog_bloc.dart';
import 'package:pet_assg/src/domain/hive/dog_hive/dog_hive.dart';
import 'package:pet_assg/src/presentation/posts/views/posts_page.dart';

class HomeActionButton extends StatelessWidget {
  const HomeActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Hero(
        tag: "arrow",
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void onTap(BuildContext context) {
    //Saves Image
    var box = Hive.box('pet_assg');
    box.add(
      DogHive(dogImage: context.read<DogBloc>().state.imageLink),
    );

    //Push to next page
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const PostsPage();
        },
      ),
    );
  }
}
