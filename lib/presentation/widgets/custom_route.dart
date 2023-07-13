/*
* Created by: nguyenan
* Created at: 2021/07/05 2:07 PM
*/

import 'package:flutter/material.dart';

class CustomRoute extends MaterialPageRoute {
  final Widget page;
  final String? routeName;
  CustomRoute({required this.page, this.routeName,})
      : super(builder: (context) => page);

  @override
  // TODO: implement settings
  RouteSettings get settings => RouteSettings(
      name: routeName ?? page.runtimeType.toString());
}

class CustomRouteHero extends PageRouteBuilder {
  final Widget page;
  final String? routeName;
  CustomRouteHero({
    required this.page,
    this.routeName,
  }) : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                page,
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(
                opacity: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(animation),
                child: child,
              );
            },
            opaque: true,
            transitionDuration: const Duration(milliseconds: 1000));

  @override
  // TODO: implement settings
  RouteSettings get settings => opaque
      ? RouteSettings(
          name: routeName ?? page.runtimeType.toString())
      : super.settings;
}

class CustomRouteDialog extends PageRouteBuilder {
  final Widget page;
  final String? routeName;
  CustomRouteDialog({
    required this.page,
    this.routeName,
  }) : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(animation),
                child: child,
              );
            },
            opaque: false);
  @override
  // TODO: implement settings
  RouteSettings get settings => opaque
      ? RouteSettings(
          name: routeName ?? page.runtimeType.toString())
      : super.settings;
}
