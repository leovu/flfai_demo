import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/common/assets.dart';

class CustomBackgroundDayApp extends StatelessWidget {
  const CustomBackgroundDayApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetImages.dayBackground,
      fit: BoxFit.cover,
    );
  }
}

class CustomBackgroundNightApp extends StatelessWidget {
  const CustomBackgroundNightApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetImages.nightBackground,
      fit: BoxFit.cover,
    );
  }
}
