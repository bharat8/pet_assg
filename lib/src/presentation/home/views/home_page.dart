import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_assg/src/application/dog/dog_bloc.dart';
import 'package:pet_assg/src/presentation/core/widgets/commons.dart';
import 'package:pet_assg/src/presentation/home/widgets/home_action_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DogBloc>().add(FetchDogImage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<DogBloc, DogState>(
        builder: (context, state) {
          return state.dogImageRequestStatus.maybeWhen(
            orElse: () => const EmptyWidget(),
            loading: () => const LoadingWidget(),
            failure: (f) => FailureWidget(failure: f),
            success: () => Container(
              width: size.width,
              height: size.height,
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: size.width,
                      height: size.height * 0.5,
                      child: CachedNetworkImage(
                        imageUrl: state.imageLink,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder: (context, _, progress) {
                          if (progress.progress == 1) {
                            context.read<DogBloc>().add(
                                const ChangeImageLoadingStatus(status: true));
                          }
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        errorWidget: (context, _, __) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Could not load image!!",
                              ),
                              const SizedBox(height: 12),
                              ElevatedButton.icon(
                                onPressed: () {
                                  context.read<DogBloc>().add(FetchDogImage());
                                },
                                icon: const Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "Refresh",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (state.imageLoaded)
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: HomeActionButton(),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
