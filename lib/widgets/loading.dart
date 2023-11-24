import 'package:flutter/material.dart';

class MyLoadingWidget extends StatelessWidget {
  final String loadingMessage;

  const MyLoadingWidget({
    required this.loadingMessage,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(height: 50,),
        Text(loadingMessage)
      ],
    );
  }
}
