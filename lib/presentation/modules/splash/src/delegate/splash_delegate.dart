/*
* Created by: tranly
* Created at: 2023/07/03 21:04
*/
import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashDelegate extends FairDelegate{
  late  bool _isLoading;
  @override
  void initState() {
    super.initState();
    _isLoading = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _downloadUpdate(context);
    });
  }

  @override
  Map<String, PropertyValue> bindValue() {
    var functions = super.bindValue();
    functions.addAll({
      '_isLoading': () => _isLoading,
    });
    return functions;
  }

  @override
  Map<String, Function> bindFunction() {
    return {
      ...super.bindFunction(),
      '_downloadUpdate': _downloadUpdate,
    };
  }


  void _downloadUpdate(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? urlUpdatePath = prefs.getString("splash_screen");
    if(urlUpdatePath == null) {
      String path = await FileSaver.instance.saveFile(
          name: "lib_presentation_modules_splash_src_ui_splash_screen.fair.bin",
          ext: 'bin',
          link: LinkDetails(link: "https://epoint-bucket.s3.ap-southeast-1.amazonaws.com/app/lib_presentation_modules_splash_src_ui_splash_screen.fair.bin"),
          customMimeType: 'bin');
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("splash_screen", path);
      if (!context.mounted) return;
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (_) {
        return FairWidget(
          name: 'splash',
          path: path,
          data: {
            'fairProps': jsonEncode({}),
          },
        );
      }));
    }
    else {
      setState(() {
        _isLoading = false;
      });
    }
  }
}