/*
* Created by: tranly
* Created at: 2023/07/03 17:28
*/
import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/common/theme.dart';

class CustomCheckbox extends StatelessWidget {

  final bool? value;
  final Color? activeColor;
  final Color? checkColor;
  final Function(bool?)? onChanged;

  const CustomCheckbox({Key? key, this.value, this.onChanged, this.activeColor, this.checkColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: activeColor??AppColors.primaryColor,
      checkColor:checkColor?? AppColors.white,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      value: value??false,
      onChanged: onChanged,
      shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0))
      ),
    );
  }
}