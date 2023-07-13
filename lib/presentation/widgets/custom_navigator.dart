

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fair_demo/presentation/widgets/custom_route.dart';

class CustomNavigator {
  static push(BuildContext context, Widget screen,
      {bool root = true,
      bool opaque = true,}) {
    return Navigator.of(context, rootNavigator: root).push(opaque
        ? CustomRoute(page: screen)
        : CustomRouteDialog(
            page: screen));
  }

  static pushViewController(BuildContext context, Widget screen) {
    Navigator.of(context, rootNavigator: true).push(
      PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            screen,
        transitionDuration: Duration.zero,
        barrierDismissible: false,
        barrierColor: Colors.black45,
        opaque: false,
      ),
    );
  }

  // static popToScreen(BuildContext context, Widget screen,String routeName,
  //     {bool root = true}) {
  //   Navigator.of(context, rootNavigator: root).popUntil((route) {
  //     return route.settings.name == routeName;
  //   });
  // }

  static popToNameScreen(BuildContext context, String? routeName,
      {bool root = true}) {
    Navigator.of(context, rootNavigator: root).popUntil((route) {
      if (routeName != null) {
        return route.settings.name == routeName;
      } else {
        return route.isFirst;
      }
    });
  }

  static popToRoot(BuildContext context, {bool root = true}) {
    Navigator.of(context, rootNavigator: root)
        .popUntil((route) => route.isFirst);
  }

  static pop(BuildContext context, {dynamic object, bool root = true}) {
    if (object == null) {
      Navigator.of(context, rootNavigator: root).pop();
    } else {
      Navigator.of(context, rootNavigator: root).pop(object);
    }
  }

  static Future<void> delayedPop(BuildContext context,
      {dynamic object, bool root = true}) async {
    unawaited(
      Navigator.of(context, rootNavigator: root).push(
        PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              WillPopScope(
            onWillPop: () async => false,
            child: const Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ),
          transitionDuration: Duration.zero,
          barrierDismissible: false,
          barrierColor: Colors.black45,
          opaque: false,
        ),
      ),
    );
    await Future.delayed(const Duration(seconds: 1));
    if (object == null) {
      Navigator.of(context)..pop()..pop();
    } else {
      Navigator.of(context)..pop()..pop(object);
    }
  }

  static canPop(BuildContext context) {
    ModalRoute<Object?>? parentRoute = ModalRoute.of(context);
    return parentRoute?.canPop ?? false;
  }

  static pushReplacement(BuildContext context, Widget screen,
      {bool root = true,
      bool isHero = false,
      String? routeName,bool isSaleV2 = false}) {
    Navigator.of(context, rootNavigator: root).pushReplacement(isHero
        ? CustomRouteHero(
            page: screen, routeName: routeName)
        : CustomRoute(
            page: screen, routeName: routeName));
  }

  static popToRootAndPushReplacement(BuildContext context, Widget screen,
      {bool root = true,
      bool isHero = false,
      String? routeName}) {
    Navigator.of(context, rootNavigator: root).popUntil((route) {
      return route.isFirst;
    });
    Navigator.of(context, rootNavigator: root).pushReplacement(isHero
        ? CustomRouteHero(
            page: screen, routeName: routeName)
        : CustomRoute(
            page: screen, routeName: routeName));
  }

  static popToRootAndPush(BuildContext context, Widget screen,
      {bool root = true, String? routeName}) {
    Navigator.of(context, rootNavigator: root).popUntil((route) => route.isFirst);
    Navigator.of(context, rootNavigator: root).push(CustomRoute(page: screen, routeName: routeName));
  }
}
