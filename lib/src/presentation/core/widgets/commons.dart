import 'package:flutter/material.dart';
import 'package:pet_assg/src/infrastructure/core/failure/failure.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class FailureWidget extends StatelessWidget {
  const FailureWidget({
    Key? key,
    this.failure,
  }) : super(key: key);

  final Failure? failure;

  @override
  Widget build(BuildContext context) {
    return failure?.maybeWhen(
          orElse: () => const Center(
            child: Text(
              "Error occured !!",
            ),
          ),
          connection: () => const Center(
            child: Text(
              "Connection Error occurred !!",
            ),
          ),
          serverError: (errorCode, errorMssg) => Center(
            child: Text(
              "Server Error occured : $errorMssg !!",
            ),
          ),
          unexpected: (errorMssg) => Center(
            child: Text(
              "Unexpected Error occured : $errorMssg !!",
            ),
          ),
          value: (errorMssg) => Center(
            child: Text(
              "Value Error occured : $errorMssg !!",
            ),
          ),
        ) ??
        const Center(
          child: Text(
            "Error occurred !!",
          ),
        );
  }
}
