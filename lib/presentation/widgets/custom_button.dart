import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? borderColor;
  final String? icon;
  final String? text;
  final TextStyle? style;
  final Function? onTap;
  final bool isExpand;
  final bool isIcon;
  final Color? iconColor;
  final bool enable;
  final double heightIcon;
  final double widthIcon;
  final double radius;

  const CustomButton(
      {Key? key,
      this.backgroundColor,
      this.borderColor,
      this.icon,
      this.text,
      this.style, this.onTap,
      this.isExpand = true,
      this.isIcon = false,
      this.iconColor,
      this.enable = true,
      this.heightIcon = 20.0,
      this.widthIcon = 20.0,
      this.radius = 8.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (enable) {
            onTap!();
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: enable
                  ? (backgroundColor ?? const Color(0xFFF37021))
                  : (backgroundColor ?? const Color(0xFFF37021))
                      .withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              border: borderColor == null
                  ? null
                  : Border.all(
                      color: borderColor!,
                      width: 1.0,
                      style: BorderStyle.solid)),
          margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.025,
              vertical: MediaQuery.of(context).size.width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Container(
                  width: widthIcon,
                  height: heightIcon,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: isIcon
                      ? ImageIcon(
                          AssetImage(icon!),
                          color: iconColor ?? const Color(0xFFF37021),
                          size: 20.0,
                        )
                      : Image.asset(
                          icon!,
                          width: 20,
                        ),
                ),
              isExpand
                  ? Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        text??"",
                        style: style ??
                            const TextStyle(
                                fontSize: 15.0,
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ))
                  : Text(
                      text??"",
                      style: style ??
                          const TextStyle(
                              fontSize: 15.0,
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.normal),
                      // enable ? AppColors.white : AppColors.grey600),
                    )
            ],
          ),
        ));
  }
}
