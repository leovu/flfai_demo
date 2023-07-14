import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 10,
      child: Transform.scale(
          scale: 0.1,
          child: const FittedBox(
              child: CircularProgressIndicator(
            color: Colors.grey,
          ))),
    );
  }
}
