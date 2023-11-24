import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  final String errorMessage;
  
  const MyErrorWidget({
    required this.errorMessage,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.black, width: 1.0)
      ),
      child: Column(
        children: [
          const Icon(Icons.error, color: Colors.red, size: 60,),
          const SizedBox(height: 20,),
          const Text(
            "Error!",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40
            ),
          ),
          const SizedBox(height: 10.0,),
          Text(errorMessage)
        ],
      ),
    );
  }
}
