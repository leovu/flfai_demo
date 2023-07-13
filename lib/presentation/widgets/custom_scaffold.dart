/*
* Created by: tranly
* Created at: 2023/06/28 16:05
*/
import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_navigator.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final String? title;
  final Color? backgroundColor;
  final Function? onWillPop;
  final bool isBottomSheet;
  final TextStyle? textStyleTitle;
  final TextAlign? textAlign;

  const CustomScaffold({
    Key? key,
    this.title,
    this.backgroundColor,
    this.onWillPop,
    this.isBottomSheet = false,
    this.body,
    this.textStyleTitle,
    this.textAlign,
  }) : super(key: key);

  Widget _buildBody(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (onWillPop != null) {
          onWillPop!();
          return true;
        } else {
          if (CustomNavigator.canPop(context)) {
            CustomNavigator.pop(context);
            return true;
          }
        }
        return false;
      },
      child: Scaffold(
          appBar: title == null
              ? null
              : AppBar(
                  title: Text(
                    title!,
                    style: textStyleTitle,
                    textAlign: textAlign,
                  ),
                  elevation: 0.0,
                ),
          backgroundColor: backgroundColor ?? const Color(0xFFFFFFFF),
          body: SizedBox(
              width: double.infinity, height: double.infinity, child: body),
          resizeToAvoidBottomInset: !isBottomSheet),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }
}
