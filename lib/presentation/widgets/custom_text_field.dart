/*
* Created by: tranly
* Created at: 2023/06/28 14:32
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final Color? backgroundColor;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final bool? autofocus;
  final bool readOnly;
  final void Function()? onTap;
  final bool enableBorder;
  final int? maxLines;
  final TextStyle? style;
  final String error;
  final double radius;
  final Widget? suffixChild;
  final Widget? prefixChild;
  final TextAlign? textAlign;
  final Border? border;

  const CustomTextField(
      {Key? key,
      this.focusNode,
      this.controller,
      this.hintText,
      this.labelText,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.onSubmitted,
      this.inputFormatters = const <TextInputFormatter>[],
      this.onChanged,
      this.autofocus,
      this.readOnly = false,
      this.onTap,
      this.enableBorder = false,
      this.maxLines,
      this.style,
      this.error = "",
      this.radius = 5.0,
      this.backgroundColor,
      this.hintStyle,
      this.suffixChild,
      this.textAlign,
      this.border,
      this.prefixChild}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              color: backgroundColor ??
                  ((error != "")
                      ? const Color(0xFFFFFFFF)
                      : (enableBorder
                          ? const Color(0xFFFFFFFF)
                          : const Color(0xFFF6F6F6))),
              border: border ??
                  Border.all(
                      width: 1.0,
                      color: (error.isNotEmpty)
                          ? const Color(0xFFE22119)
                          : (enableBorder
                              ? const Color(0xFFF37021)
                              : const Color(0xFFF6F6F6)),
                      style: BorderStyle.solid)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (prefixChild != null) prefixChild!,
              Flexible(
                child: TextField(
                  focusNode: focusNode ?? FocusNode(),
                  controller: controller ?? TextEditingController(),
                  keyboardType: (obscureText
                      ? TextInputType.visiblePassword
                      : keyboardType),
                  textInputAction: textInputAction ?? TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: hintText,
                    contentPadding: const EdgeInsets.all(15.0),
                    hintStyle: hintStyle ??
                        const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF777777),
                            fontWeight: FontWeight.normal),
                    labelText: labelText,
                    labelStyle: hintStyle ??
                        const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF777777),
                            fontWeight: FontWeight.normal),
                    isDense: true,
                    border: InputBorder.none,
                  ),
                  style: style ??
                      const TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF777777),
                          fontWeight: FontWeight.normal),
                  obscureText: obscureText,
                  onSubmitted: onSubmitted,
                  inputFormatters: inputFormatters,
                  onChanged: onChanged,
                  autofocus: autofocus ?? false,
                  maxLines: maxLines ?? 1,
                  textAlign: textAlign ?? TextAlign.start,
                  readOnly: readOnly,
                  onTap: onTap,
                ),
              ),
              if (suffixChild != null) suffixChild!
            ],
          ),
        ),
        if (error.isNotEmpty && error != ".")
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              error,
              style: const TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFFE22119),
                  fontWeight: FontWeight.normal),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
      ],
    );
  }
}
